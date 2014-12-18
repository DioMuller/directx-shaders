#include "PostEffect.h"
#include "Vertex.h"

using namespace dx9lib;

PostEffect::PostEffect(std::wstring effectFile, std::string tech, D3DXVECTOR4 dimensions)
{
	this->shader = new mage::Effect(effectFile);
	this->tech = tech;
	this->viewport = { dimensions[0], dimensions[1], dimensions[2], dimensions[3], 0.0f, 1.0f };

	this->vertexBuffer = nullptr;
}


PostEffect::~PostEffect()
{
	if (shader) delete shader;
}

void PostEffect::begin(IDirect3DDevice9* device)
{
	// Create Vertex buffer if it doesn't exist.
	if (!vertexBuffer)
	{
		std::vector<Vertex> vertices =
		{
			//px, py, pz, nx, ny, nz,  u,  v
			{ -1, 1, 0, 0, 0, 0, 0, 0 },
			{ 1, 1, 0, 0, 0, 0, 1, 0 },
			{ -1, -1, 0, 0, 0, 0, 0, 1 },
			{ 1, -1, 0, 0, 0, 0, 1, 1 }
		};

		vertexBuffer = Vertex::createVertexBuffer(device, vertices);
	}

	// Create texture from current render.
	HR(device->CreateTexture(viewport.Width, viewport.Height, 1, D3DUSAGE_RENDERTARGET, D3DFMT_A8R8G8B8, D3DPOOL_DEFAULT, &renderedTexture, 0));
	HR(renderedTexture->GetSurfaceLevel(0, &postProcessingTarget));

	// Change render target.
	HR(device->GetRenderTarget(0, &defaultTarget));
	HR(device->SetRenderTarget(0, postProcessingTarget))
}

void PostEffect::process(IDirect3DDevice9* device)
{
	device->SetViewport(&viewport);
	
	shader->setTexture("", renderedTexture);
	shader->execute([this](IDirect3DDevice9* device)
	{
		HR(device->SetStreamSource(0, vertexBuffer, 0, sizeof(Vertex)));
		HR(device->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, 2));
	});

}

void PostEffect::end(IDirect3DDevice9* device)
{
	delete renderedTexture;
	renderedTexture = nullptr;

	delete postProcessingTarget;
	postProcessingTarget = nullptr;
}