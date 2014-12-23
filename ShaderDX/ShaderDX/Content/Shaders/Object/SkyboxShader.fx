//==================================================================
// Phong shading
//==================================================================

// Transform Parameters
uniform extern float4x4 gWorld;
uniform extern float4x4 gView;
uniform extern float4x4 gProjection;

// Ambient Light Component
uniform extern float4 gAmbientColor;
uniform extern float4 gAmbientMaterial;

// Diffuse Light Component
uniform extern float4 gDiffuseColor;
uniform extern float4 gDiffuseMaterial;
uniform extern float4 gLightDir;

// Specular Light Component
uniform extern float4 gSpecularColor;
uniform extern float4 gSpecularMaterial;
uniform extern float gSpecularPower;

// Camera Position
uniform extern float4 gCameraPos;

// Texture
uniform extern texture gTexture;

// Vertex Shader Output Struct
struct OutputVS
{
	float4 posH : POSITION0;
	float2 tex0 : TEXCOORD0;
};

// Texture Sampler
sampler TextureSampler = sampler_state
{
	Texture = <gTexture>;
	MinFilter = Anisotropic;
	MaxAnisotropy = 8;
	MagFilter = LINEAR;
	MipFilter = LINEAR;
	AddressU = WRAP;
	AddressV = WRAP;
};

// Vertex Shader
OutputVS TransformVS(float3 posL : POSITION0, float3 normal : NORMAL0, float2 tex0 : TEXCOORD0)
{
	// Initializes structure.
	OutputVS outVS = (OutputVS)0;

	// Transforms scene.
	float4 posW = mul(float4(posL, 1.0f), gWorld);
	float4 posWV = mul(posW, gView);
	float4 posWVP = mul(posWV, gProjection);
	outVS.posH = posWVP;

	// Passes the texture to rastering.
	outVS.tex0 = tex0;
	return outVS;
}

// Pixel Shader
float4 TransformPS(float3 tex0 : TEXCOORD0) : COLOR
{
	return float4(1.0, 0.0, 0.0, 1.0);//tex2D(TextureSampler, tex0);
}

technique SkydomeTech
{
	pass P0
	{
		// Vertex and Pixel Shader associated with this pass.            
		vertexShader = compile vs_2_0 TransformVS();
		pixelShader = compile ps_2_0 TransformPS();

		//Device State
		FillMode = Solid;
	}
}
