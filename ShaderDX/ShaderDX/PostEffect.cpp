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

void PostEffect::initialize(IDirect3DDevice9* device)
{
	if (shader)
	{
		std::string error = shader->compile(device);
		if (!error.empty()) {
			MessageBoxA(0, error.c_str(), 0, 0);
			exit(1);
		}
	}

	shader->setVector("gScreenSize", D3DXVECTOR2((float) viewport.Width, (float) viewport.Height));

	// Create Vertex buffer if it doesn't exist.
	if (!vertexBuffer)
	{
		std::vector<Vertex> vertices =
		{
			//px,py,pz,nx,ny,nz, u, v
			{ -1, 1, 0, 0, 0, 0, 0, 0 },
			{ 1, 1, 0, 0, 0, 0, 1, 0 },
			{ -1, -1, 0, 0, 0, 0, 0, 1 },
			{ 1, -1, 0, 0, 0, 0, 1, 1 }
		};

		vertexBuffer = Vertex::createVertexBuffer(device, vertices);
	}
}

void PostEffect::begin(IDirect3DDevice9* device)
{
	// Create texture from current render.
	HR(device->CreateTexture(viewport.Width, viewport.Height, 1, D3DUSAGE_RENDERTARGET, D3DFMT_A8R8G8B8, D3DPOOL_DEFAULT, &renderedTexture, 0));
	HR(renderedTexture->GetSurfaceLevel(0, &postProcessingTarget));

	// Change render target.
	HR(device->GetRenderTarget(0, &defaultTarget));
	HR(device->SetRenderTarget(0, postProcessingTarget));
}

void PostEffect::process(IDirect3DDevice9* device)
{
	device->EndScene();

	if (defaultTarget) {
		HR(device->SetRenderTarget(0, defaultTarget));
		defaultTarget = nullptr;
	}

	device->Clear(0, NULL, D3DCLEAR_TARGET | D3DCLEAR_ZBUFFER, D3DCOLOR_XRGB(154, 206, 235), 1.0f, 0);
	device->BeginScene();

	if (!shader || !renderedTexture) return;

	device->SetViewport(&viewport);
	
	shader->setTechnique(this->tech);
	shader->setTexture("gTexture", renderedTexture);
	shader->execute([this](IDirect3DDevice9* device)
	{
		HR(device->SetStreamSource(0, vertexBuffer, 0, sizeof(Vertex)));
		HR(device->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, 2));
	});
}

void PostEffect::end(IDirect3DDevice9* device)
{
	renderedTexture->Release();
	renderedTexture = nullptr;

	postProcessingTarget->Release();
	postProcessingTarget = nullptr;
}
