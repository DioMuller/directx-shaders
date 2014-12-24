#include <d3dx9.h>
#include "SimpleMesh.h"
#include "Mage/HandleError.h"
#include "Vertex.h"

using namespace dx9lib;

SimpleMesh::SimpleMesh() 
{
	useTriangleStrip = false;
}

SimpleMesh::~SimpleMesh()
{
	if (indexBuffer)
	{
		indexBuffer->Release();
		indexBuffer = nullptr;
	}

	if (vertexBuffer)
	{
		vertexBuffer->Release();
		vertexBuffer = nullptr;
	}
}

void SimpleMesh::Draw(IDirect3DDevice9* device)
{
	// Set vertex declaration
	HR(device->SetVertexDeclaration(Vertex::getDeclaration(device)));

	// Sets stream source
	HR(device->SetStreamSource(
		0, // Stream number 
		vertexBuffer, // Data 
		0, // Offset 
		sizeof(Vertex))); // Vertex data size

	// Set indexes
	HR(device->SetIndices(indexBuffer));

	// Draw Primitives
	HR(device->DrawIndexedPrimitive(useTriangleStrip ? D3DPT_TRIANGLESTRIP : D3DPT_TRIANGLELIST, 0, 0, vertices, 0, triangles));
}
