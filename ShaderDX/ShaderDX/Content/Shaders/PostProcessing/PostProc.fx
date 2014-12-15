//==================================================================
// Post Processing - Test
//==================================================================


// Vertex Shader Output Struct
struct OutputVS
{

};

// Texture Sampler
sampler TesS = sampler_state
{

};

// Vertex Shader
OutputVS TransformVS(float3 posL : POSITION0, float3 normal : NORMAL0, float2 tex0 : TEXCOORD0)
{

}

// Pixel Shader
float4 TransformPS(float3 tex0 : TEXCOORD0, float3 N : TEXCOORD1, float3 V : TEXCOORD2) : COLOR
{

}

technique PostProcessingTech
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
