#pragma once
#include "Mage/Effect.h"
namespace dx9lib
{
	class PostEffect
	{
		//////////////////////////////////////////
		// Attributes
		//////////////////////////////////////////
		private:
			// Viewport
			D3DVIEWPORT9 viewport;
			// Shader
			mage::Effect* shader;
			std::string tech;
			// Surfaces and Texture
			IDirect3DSurface9* defaultTarget;
			IDirect3DSurface9* postProcessingTarget;
			IDirect3DTexture9* renderedTexture;
			// Buffers
			IDirect3DVertexBuffer9* vertexBuffer;

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
			void initialize(IDirect3DDevice9* device);
			void begin(IDirect3DDevice9* device);
			void process(IDirect3DDevice9* device);
			void end(IDirect3DDevice9* device);

	};
}
