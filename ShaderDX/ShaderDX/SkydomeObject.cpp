#include "SkydomeObject.h"
#include "Vertex.h"

#include "Mage/HandleError.h"

using namespace dx9lib;

SkydomeObject::SkydomeObject(std::string texture, std::string shader, std::string shaderTech) : Object(shader, shaderTech)
{
	this->isLoaded = false;
	this->textureFile = texture;
}


SkydomeObject::~SkydomeObject()
{
}

// Paints the scene on each loop.
void SkydomeObject::paint(IDirect3DDevice9* device, mage::Effect* shader)
{
	if (!isLoaded)
	{
		loadGeometry(device);
		isLoaded = true;
	}

	if (!mesh) return;

	// If it has texture, use it. Else, use the default texture.
	auto tex = material->texture ? material->texture : Material::GetEmptyTexture(device);
	shader->setTexture("gTexture", tex);

	shader->commit();

	shader->execute([this](LPDIRECT3DDEVICE9 device)
	{
		HR(mesh->DrawSubset(0));
	});
}

// Process whatever should be executed every turn.
bool SkydomeObject::process(float time)
{
	return Object::process(time);
}

// Loads skybox geometry.
void SkydomeObject::loadGeometry(LPDIRECT3DDEVICE9 device)
{
	// Step 1. Load Sphere on Memory.
	ID3DXMesh* sphereMesh;

	D3DXCreateSphere(device, 1.0f, 20, 20, &sphereMesh, NULL);

	// Step 2. Convert to our vertex format.
	D3DVERTEXELEMENT9 elements[65];
	UINT numElements = 0;
	Vertex::getDeclaration(device)->GetDeclaration(elements, &numElements);

	ID3DXMesh* temp = nullptr;
	HR(sphereMesh->CloneMesh(D3DXMESH_SYSTEMMEM, elements, device, &temp));

	sphereMesh->Release();
	this->mesh = temp;

	// Step 3. Load Texture.
	this->material = std::shared_ptr<Material>(new Material());

	IDirect3DTexture9* tex = nullptr;
	std::wstring texFN = Content::GetContentItemPath(Content::TEXTURES, textureFile);
	HR(D3DXCreateTextureFromFile(device, texFN.c_str(), &tex));
	this->material->texture = tex;
}
