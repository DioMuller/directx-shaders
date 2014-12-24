#include "SkydomeObject.h"
#include "Vertex.h"
#include "Meshes.h"

#include "Mage/HandleError.h"

using namespace dx9lib;

SkydomeObject::SkydomeObject(std::string texture, std::string shader, std::string shaderTech) : Object(shader, shaderTech)
{
	this->isLoaded = false;
	this->timeElapsed = 0.0f;
	this->textureFile = texture;
}


SkydomeObject::~SkydomeObject()
{
}

// Paints the scene on each loop.
void SkydomeObject::paint(IDirect3DDevice9* device, mage::Effect* shader)
{
	DWORD original;
	device->GetRenderState(D3DRS_CULLMODE, &original);
	device->SetRenderState(D3DRS_CULLMODE, D3DCULL_NONE);
	if (!isLoaded)
	{
		loadGeometry(device);
		isLoaded = true;
	}

	if (!mesh) return;

	// If it has texture, use it. Else, use the default texture.
	auto tex = material->texture ? material->texture : Material::GetEmptyTexture(device);
	shader->setTexture("gTexture", tex);
	shader->setFloat("gTimeElapsed", timeElapsed);

	shader->commit();

	shader->execute([this](LPDIRECT3DDEVICE9 device)
	{
		mesh->Draw(device);
	});
	device->SetRenderState(D3DRS_CULLMODE, original);
}

// Process whatever should be executed every turn.
bool SkydomeObject::process(float time)
{
	timeElapsed += time;
	return Object::process(time);
}

// Loads skybox geometry.
void SkydomeObject::loadGeometry(LPDIRECT3DDEVICE9 device)
{
	// Load Mesh
	mesh = new SimpleMesh();
	DX9LIB_BuildSphere(device, 100, 100, 100.0f, mesh);

	// Load Texture
	this->material = std::shared_ptr<Material>(new Material());

	IDirect3DTexture9* tex = nullptr;
	std::wstring texFN = Content::GetContentItemPath(Content::TEXTURES, textureFile);
	HR(D3DXCreateTextureFromFile(device, texFN.c_str(), &tex));
	this->material->texture = tex;
}
