#pragma once
#include <d3d9.h>
#include "Content.h"

namespace dx9lib
{
	// Material data class.
	class Material
	{
		private:
			static IDirect3DTexture9* emptyTexture;

		public:
			D3DMATERIAL9 material;
			IDirect3DTexture9* texture;

		public:
			Material();
			~Material();

		public:
			static IDirect3DTexture9* GetEmptyTexture(IDirect3DDevice9* device);
	};
}