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
			int triangles;
			bool useTriangleStrip;
		public:
			SimpleMesh();
			~SimpleMesh();

		public:
			void Draw(IDirect3DDevice9* device);
	};
}

