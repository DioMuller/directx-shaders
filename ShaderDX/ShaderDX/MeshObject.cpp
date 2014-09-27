#include "MeshObject.h"
#include "Vertex.h"

MeshObject::MeshObject(std::string file, std::string shaderTech) : Object(shaderTech)
{
	this->mesh = nullptr;
}


MeshObject::~MeshObject()
{
	if (mesh) delete mesh;
}

// Paints the transformed object on the screen.
void MeshObject::paint(IDirect3DDevice9* device, mage::Effect* shader)
{
	if (!mesh) return;

	for (unsigned int i = 0; i < materials.size(); ++i)
	{
		// Sets Material Properties.
		shader->setColor("gAmbientMaterial", materials[i].material.Ambient);
		shader->setColor("gADiffuseMaterial", materials[i].material.Diffuse);
		shader->setColor("gSpecularMaterial", materials[i].material.Specular);
		shader->setFloat("gSpecularPower", materials[i].material.Power);

		// If it has texture, use it. Else, use the default texture.
		shader->setTexture("gTexture", materials[i].texture != nullptr ?
			materials[i].texture : Material::GetEmptyTexture());

		shader->commit();

		shader->execute([this, i](LPDIRECT3DDEVICE9 device)
		{
			HR(mesh->DrawSubset(i));
		});
	}
}

void MeshObject::loadXFile(IDirect3DDevice9* device, const mage::TString& filename)
{
	// Step 1: Load the .x file on the system memory.
	ID3DXMesh* meshSys = nullptr;
	ID3DXBuffer* adjacencyBuffer = nullptr;
	ID3DXBuffer* materialBuffer = nullptr;
	DWORD numMaterials;

	HR(D3DXLoadMeshFromX(filename.c_str(), D3DXMESH_SYSTEMMEM, device, &adjacencyBuffer, &materialBuffer, 0, &numMaterials, &meshSys));

	// Step 2: Find out if the mesh has light normals.
	D3DVERTEXELEMENT9 elems[MAX_FVF_DECL_SIZE];
	HR(meshSys->GetDeclaration(elems));
	bool hasNormals = false;
	for (int i = 0; i < MAX_FVF_DECL_SIZE; ++i)
	{
		// Stops if D3DDECL_END() is found.
		if (elems[i].Stream == 0xFF) break;

		// Tests if it's Normal.
		if (elems[i].Type == D3DDECLTYPE_FLOAT3 &&
			elems[i].Usage == D3DDECLUSAGE_NORMAL &&
			elems[i].UsageIndex == 0)
		{
			hasNormals = true;
			break;
		}
	}

	// Step 3: Change the Mesh format to our vertex format.
	D3DVERTEXELEMENT9 elements[64];
	UINT numElements = 0;
	Vertex::getDeclaration(device)->GetDeclaration(elements, &numElements);

	ID3DXMesh* temp = nullptr;
	HR(meshSys->CloneMesh(D3DXMESH_SYSTEMMEM, elements, device, &temp));
	meshSys->Release();
	meshSys = temp;

	// Step 4: If doesn't have normals, generate.
	if (!hasNormals)
	{
		HR(D3DXComputeNormals(meshSys, 0));
	}

	// Step 5: Mesh Optimization
	HR(meshSys->Optimize(D3DXMESH_MANAGED | D3DXMESHOPT_COMPACT | D3DXMESHOPT_ATTRSORT | D3DXMESHOPT_VERTEXCACHE,
		(DWORD*)adjacencyBuffer->GetBufferPointer(), 0, 0, 0, &mesh));

	//Those won't be needed anymore.
	meshSys->Release();
	adjacencyBuffer->Release();

	// Step 6: Extract Materials and load Textures.
	if (materialBuffer != nullptr && numMaterials > 0)
	{
		D3DXMATERIAL* d3dxmaterials = (D3DXMATERIAL*)materialBuffer->GetBufferPointer();
		for (DWORD i = 0; i < numMaterials; ++i)
		{
			// Save the 'i'th material and defines the ambient component to be the same as diffuse.
			d3dxmaterials[i].MatD3D.Ambient = d3dxmaterials[i].MatD3D.Diffuse;
			auto material = new Material();
			material->material = d3dxmaterials[i].MatD3D;

			// Checks if there is an texture.
			if (d3dxmaterials[i].pTextureFilename != nullptr)
			{
				IDirect3DTexture9* tex = nullptr;
				char* texFN = d3dxmaterials[i].pTextureFilename;
				HR(D3DXCreateTextureFromFileA(device, texFN, &tex));
				material->texture = tex;
			}
			else
			{
				material->texture = Material::GetEmptyTexture();
			}
		}
	}

}