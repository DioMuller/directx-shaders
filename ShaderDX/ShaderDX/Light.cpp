#include "Light.h"


Light::Light(D3DXVECTOR3 direction, D3DXVECTOR3 ambient, D3DXVECTOR3 diffuse, D3DXVECTOR3 specular)
{
	this->direction = direction;
	this->ambientColor = ambient;
	this->diffuseColor = diffuse;
	this->specularColor = specular;

	this->changed = true;
}


Light::~Light()
{
}

// Process whatever should be executed every turn.
bool Light::process(float time)
{
	return true;
}

// "Paints" the light on the scene.
void Light::paint(IDirect3DDevice9* device, mage::Effect* shader)
{
	if (changed)
	{
		D3DXVec3Normalize(&direction, &direction);
		shader->setVector("gLightDir", direction);

		shader->setVector("gAmbientColor", ambientColor);
		shader->setVector("gDiffuseColor", diffuseColor);
		shader->setVector("gSpecularColor", specularColor);

		changed = false;
	}
}