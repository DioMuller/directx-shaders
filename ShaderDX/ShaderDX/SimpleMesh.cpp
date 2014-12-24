#include <d3dx9.h>
#include "SimpleMesh.h"
#include "Mage/HandleError.h"
#include "Vertex.h"

using namespace dx9lib;

SimpleMesh::SimpleMesh() {}

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
	HR(device->DrawIndexedPrimitive(D3DPT_TRIANGLESTRIP, 0, 0, vertices, 0, indexes - 2));
}

HRESULT D3DLIB_BuildSphere(IDirect3DDevice9* device, int slices, int stacks, float radius, SimpleMesh* mesh)
{
	HRESULT hr = S_OK;

	// prevent overflowing the index buffer
	while (slices * stacks * 6 > 65534)
	{
		slices--;
		stacks--;
	}

	float drho = D3DX_PI / (float)stacks;
	float dtheta = (D3DX_PI / (float)slices) * 2.0f;

	float ds = 1.0f / (float)slices;
	float dt = 1.0f / (float)stacks;

	float t = 1.0f;
	float s = 0.0f;

	hr = device->CreateVertexBuffer
		(
		sizeof(float) * 8 * stacks * (slices + 1) * 2,
		0,
		0,
		D3DPOOL_MANAGED,
		&mesh->vertexBuffer,
		NULL
		);

	if (FAILED(hr)) return hr;

	hr = device->CreateIndexBuffer
		(
		sizeof(unsigned short) * slices * stacks * 6,
		0,
		D3DFMT_INDEX16,
		D3DPOOL_MANAGED,
		&mesh->indexBuffer,
		NULL
		);

	if (FAILED(hr)) return hr;

	float *sv = NULL;
	unsigned short *ndx = NULL;

	mesh->vertexBuffer->Lock(0, 0, (void **)&sv, 0);
	mesh->indexBuffer->Lock(0, 0, (void **)&ndx, 0);

	mesh->indexes = 0;
	mesh->vertices = 0;

	int stripverts = (slices + 1) * 2;

	for (int i = 0; i < stacks; i++, t -= dt, mesh->vertices += stripverts)
	{
		float rho = (float)i * drho;
		float srho = (float)(sin(rho));
		float crho = (float)(cos(rho));
		float srhodrho = (float)(sin(rho + drho));
		float crhodrho = (float)(cos(rho + drho));

		s = 0.0f;

		// each of these is a triangle strip
		for (int j = 0; j <= slices; j++, s += ds, sv += 16)
		{
			float theta = (j == slices) ? 0.0f : j * dtheta;
			float stheta = (float)(-sin(theta));
			float ctheta = (float)(cos(theta));

			sv[0] = stheta * srho * radius;
			sv[1] = ctheta * srho * radius;
			sv[2] = crho * radius;

			sv[3] = stheta * srho;
			sv[4] = ctheta * srho;
			sv[5] = crho;

			//VectorNormalize(&sv[3]);
			// Normalize Vector
			auto sum = sv[3] + sv[4] + sv[5];
			sv[3] = sv[3]/sum;
			sv[4] = sv[4]/sum;
			sv[5] = sv[5]/sum;
			// End Normalize Vector

			sv[6] = s;
			sv[7] = t;

			sv[8] = stheta * srhodrho * radius;
			sv[9] = ctheta * srhodrho * radius;
			sv[10] = crhodrho * radius;

			sv[11] = stheta * srhodrho;
			sv[12] = ctheta * srhodrho;
			sv[13] = crhodrho;

			//VectorNormalize(&sv[3]);

			sv[14] = s;
			sv[15] = (t - dt);
		}

		// and unwind the strip into it's component indexes
		for (int j = 2; j < stripverts; j++, ndx += 3, mesh->indexes += 3)
		{
			ndx[0] = mesh->vertices + j - 2;

			if (j & 1)
			{
				ndx[1] = mesh->vertices + j;
				ndx[2] = mesh->vertices + j - 1;
			}
			else
			{
				ndx[1] = mesh->vertices + j - 1;
				ndx[2] = mesh->vertices + j;
			}
		}
	}

	mesh->vertexBuffer->Unlock();
	mesh->indexBuffer->Unlock();

	return S_OK;
}
