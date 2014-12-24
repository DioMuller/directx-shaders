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
static const float cContrast = 2.1;
static const float cBrightness = 40.0;

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

	int pos = round(screenPosition.x) % 3;
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
	
	color += (cBrightness / 255.0);
	color = color - cContrast * (color - 1.0) * color * (color - 0.5);

	if (round(screenPosition.y) % 2 == 0)
	{
		mask *= 0.5;
	}

	color = color * mask;

	return color;
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
