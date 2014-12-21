//==================================================================
// Post-Processing Shader
//==================================================================

/////////////////////////////////////
// Externs
/////////////////////////////////////

// Scene Externs
uniform extern texture gTexture;
uniform extern float2 gScreenSize;

/////////////////////////////////////
// Constants
/////////////////////////////////////
static const float3x3 cSobelMatrix = float3x3(
		0,  1,  0,
		1, -4,  1,
		0,  1,  0
	);

/////////////////////////////////////
// Vertex Shader Output Struct
/////////////////////////////////////
struct OutputVS
{
	float4 pos : POSITION0;
	float2 tex0 : TEXCOORD0;
};

/////////////////////////////////////
// Sampler
/////////////////////////////////////
sampler gTextureSampler = sampler_state
{
	Texture = <gTexture>;
};

/////////////////////////////////////
// Helper Functions
/////////////////////////////////////
float2 GetPixelSize(float2 imageSize)
{
	return float2(1.0 / imageSize.x, 1.0 / imageSize.y);
}

float ToGrayscale(float3 color)
{
	return (0.299 * color.r) + (0.587 * color.g) + (0.114 * color.b);
}

float4 ApplyMask(sampler2D tex, float2 imageSize, float2 position, float3x3 mask)
{
	//Do not process borders.
	if ( position.x == 0 || position.y == 0 ) return 0;
	if ( position.x == 1 || position.y == 1 ) return 0;

	// Size difference between pixels
	float2 diff = GetPixelSize(imageSize);

	// Upper row
	float4 m00 = tex2D(tex, float2(position.x - diff.x, position.y - diff.y)) * mask._m00;
	float4 m01 = tex2D(tex, float2(position.x		 , position.y - diff.y)) * mask._m01;
	float4 m02 = tex2D(tex, float2(position.x + diff.x, position.y - diff.y)) * mask._m02;

	// Middle row
	float4 m10 = tex2D(tex, float2(position.x - diff.x, position.y)) * mask._m10;
	float4 m11 = tex2D(tex, float2(position.x         , position.y)) * mask._m11;
	float4 m12 = tex2D(tex, float2(position.x + diff.x, position.y)) * mask._m12;

	// Lower row
	float4 m20 = tex2D(tex, float2(position.x - diff.x, position.y + diff.y)) * mask._m20;
	float4 m21 = tex2D(tex, float2(position.x         , position.y + diff.y)) * mask._m21;
	float4 m22 = tex2D(tex, float2(position.x + diff.x, position.y = diff.y)) * mask._m22;

	return float4(( m00 + m01 + m02 +
				    m10 + m11 + m12 +
		            m20 + m21 + m22).rgb, 1.0);
}

/////////////////////////////////////
// Vertex shaders
/////////////////////////////////////
OutputVS TransformVS(float3 posL : POSITION0, float3 normal : NORMAL0, float2 tex0 : TEXCOORD0)
{
	// Initializes structure.
	OutputVS outVS = (OutputVS)0;

	// Transforms scene.
	outVS.pos = float4(posL, 1.0f);
	outVS.tex0 = tex0;
	return outVS;
}

/////////////////////////////////////
// Pixel Shaders
/////////////////////////////////////
float4 GrayscalePS(float2 tex0 : TEXCOORD0) : COLOR
{
	float4 color = tex2D(gTextureSampler, tex0);
	float gray = ToGrayscale(color.rgb);

	return float4(gray, gray, gray, color.a);
}

float4 SobelPS(float2 tex0 : TEXCOORD0) : COLOR
{
	float value = ApplyMask(gTextureSampler, gScreenSize, tex0, cSobelMatrix);

	return float4(value, value, value, 1.0);
}

/////////////////////////////////////
// Techniques
/////////////////////////////////////
technique GrayscaleTech
{
	pass P0
	{
		vertexShader = compile vs_2_0 TransformVS();
		pixelShader = compile ps_2_0 GrayscalePS();
		FillMode = Solid;
	}
};

technique SobelTech
{
	pass P0
	{
		vertexShader = compile vs_2_0 TransformVS();
		pixelShader = compile ps_2_0 SobelPS();
		FillMode = Solid;
	}
};
