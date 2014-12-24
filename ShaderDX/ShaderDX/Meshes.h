#pragma once
#include "SimpleMesh.h"

namespace dx9lib
{
	HRESULT DX9LIB_BuildSphere(IDirect3DDevice9* device, int slices, int stacks, float radius, dx9lib::SimpleMesh* mesh);
}
