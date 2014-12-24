#pragma once
// Based on the sphere generator here: http://pastebin.com/GZV8mbbC
// used this since CreateSphere doesn't return texture coordinates.

#include "D3D9.h"

namespace dx9lib
{
	class SimpleMesh
	{
		public:
			LPDIRECT3DVERTEXBUFFER9 vertexBuffer;
			LPDIRECT3DINDEXBUFFER9 indexBuffer;
			int vertices;
			int indexes;
		public:
			SimpleMesh();
			~SimpleMesh();

		public:
			void Draw(IDirect3DDevice9* device);
	};
}

HRESULT D3DLIB_BuildSphere(IDirect3DDevice9* device, int slices, int stacks, float radius, dx9lib::SimpleMesh* mesh);
