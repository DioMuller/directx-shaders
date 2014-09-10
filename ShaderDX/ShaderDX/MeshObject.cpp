#include "MeshObject.h"


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

	for (int i = 0; i < materials.size(); ++i)
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