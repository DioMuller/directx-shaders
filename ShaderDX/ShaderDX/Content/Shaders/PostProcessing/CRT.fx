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
static const float cMul1 = 0.51;
static const float cMul2 = 0.255;

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
float4 CRTPS(float2 tex0 : TEXCOORD0) : COLOR
{
	float4 color = tex2D(gTextureSampler, tex0);
	float2 screenPosition = tex0 * gScreenSize;
	float pixel = screenPosition.x % 3;

	int pos = trunc(pixel) % 3;
	float4 mask = float4(0.0, 0.0, 0.0, 1.0);

	if (pos == 1)
	{
		mask.r = 1;
		mask.g = cMul1;
		mask.b - cMul2;
	}
	else if (pos == 2)
	{
		mask.r = cMul2;
		mask.g = 1;
		mask.b = cMul1;
	}
	else
	{
		mask.r = cMul1;
		mask.g = cMul2;
		mask.b = 1;
	}

	float4 result = color * mask;

	return result;
}

/////////////////////////////////////
// Techniques
/////////////////////////////////////

technique CRTTech
{
	pass P0
	{
		vertexShader = compile vs_2_0 TransformVS();
		pixelShader = compile ps_2_0 CRTPS();
		FillMode = Solid;
	}
};
