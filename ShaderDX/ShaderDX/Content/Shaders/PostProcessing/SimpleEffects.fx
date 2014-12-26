//==================================================================
// Masks Post-Processing Shader
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
static const float cThreshold = 0.18f;

/////////////////////////////////////
// Vertex Shader Output Struct
/////////////////////////////////////
struct OutputVS
{
	float4 pos : POSITION0;
	float2 tex0 : TEXCOORD0;
};

/////////////////////////////////////
// Texture Sampler
/////////////////////////////////////
sampler gTextureSampler = sampler_state
{
	Texture = <gTexture>;
};

/////////////////////////////////////
// Helper Functions
/////////////////////////////////////
float ToGrayscale(float3 color)
{
	return (0.299 * color.r) + (0.587 * color.g) + (0.114 * color.b);
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

float4 ThresholdPS(float2 tex0 : TEXCOORD0) : COLOR
{
	float4 color = tex2D(gTextureSampler, tex0);
	float gray = ToGrayscale(color.rgb);

	if (gray < cThreshold)
	{
		return float4(0, 0, 0, 1);
	}
	else
	{
		return float4(1, 1, 1, 1);
	}

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

technique ThresholdTech
{
	pass P0
	{
		vertexShader = compile vs_2_0 TransformVS();
		pixelShader = compile ps_2_0 ThresholdPS();
		FillMode = Solid;
	}
};
