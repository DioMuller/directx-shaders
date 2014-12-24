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
static const float pixelationFactor = 4.0;

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
float4 PixelatedPS(float2 tex0 : TEXCOORD0) : COLOR
{
	float2 position = tex0 * gScreenSize;
	position = trunc(position / pixelationFactor) * pixelationFactor;
	position = position / gScreenSize;

	float4 color = tex2D(gTextureSampler, position);

	return color;
}

/////////////////////////////////////
// Techniques
/////////////////////////////////////

technique PixelatedTech
{
	pass P0
	{
		vertexShader = compile vs_2_0 TransformVS();
		pixelShader = compile ps_2_0 PixelatedPS();
		FillMode = Solid;
	}
};
