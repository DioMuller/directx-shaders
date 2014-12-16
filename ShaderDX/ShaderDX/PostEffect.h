#pragma once
#include "Mage/Effect.h"

class PostEffect
{
	//////////////////////////////////////////
	// Attributes
	//////////////////////////////////////////
	private:
		D3DVIEWPORT9 viewport;
		mage::Effect* shader;
		std::string tech;
		IDirect3DSurface9* defaultTarget;
		IDirect3DSurface9* postProcessingTarget;
		IDirect3DTexture9* renderedTexture;
	
	//////////////////////////////////////////
	// Constructor
	//////////////////////////////////////////
	public:
		PostEffect(std::wstring effectFile, std::string tech, D3DXVECTOR4 dimensions);
		~PostEffect();

	//////////////////////////////////////////
	// Methods
	//////////////////////////////////////////
	public:
		void begin(IDirect3DDevice9* device);
		void process(IDirect3DDevice9* device);
		void end(IDirect3DDevice9* device);

};

