#include "PostEffect.h"


PostEffect::PostEffect(std::wstring effectFile, std::string tech, D3DXVECTOR4 dimensions)
{
	this->shader = new mage::Effect(effectFile);
	this->tech = tech;
	this->viewport = { dimensions[0], dimensions[1], dimensions[2], dimensions[3], 0.0f, 1.0f };
}


PostEffect::~PostEffect()
{
	if (shader) delete shader;
}

void PostEffect::begin(IDirect3DDevice9* device)
{
	HR(device->CreateTexture(viewport.Width, viewport.Height, 1, D3DUSAGE_RENDERTARGET, D3DFMT_A8R8G8B8, D3DPOOL_DEFAULT, &renderedTexture, 0));
	HR(renderedTexture->GetSurfaceLevel(0, &postProcessingTarget));

	HR(device->GetRenderTarget(0, &defaultTarget));
	HR(device->SetRenderTarget(0, postProcessingTarget))
}

void PostEffect::process(IDirect3DDevice9* device)
{

}

void PostEffect::end(IDirect3DDevice9* device)
{
	delete renderedTexture;
	renderedTexture = nullptr;

	delete postProcessingTarget;
	postProcessingTarget = nullptr;
}