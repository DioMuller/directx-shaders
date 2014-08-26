#include "Object.h"
#include <d3dx9math.h>


//////////////////////////////////////////
// Constructor / Destructor
//////////////////////////////////////////

Object::Object(std::string shaderTech)
{
	this->shaderTech = shaderTech;
}


Object::~Object()
{
}

//////////////////////////////////////////
// Lifecycle Methods
//////////////////////////////////////////
// Setups the scene.
void Object::setup(IDirect3DDevice9* device)
{

}

// Process whatever should be executed every turn.
bool Object::process(float time)
{
	return true;
}

// Paints the scene on each loop.
void Object::paint(IDirect3DDevice9* device, mage::Effect* shader)
{

}

// Transforms object and paints it.
void Object::transformAndPaint(IDirect3DDevice9* device, mage::Effect* shader)
{
	shader->setTechnique(shaderTech);

	// Scale
	D3DXMATRIX scale;
	D3DXMatrixScaling(&scale, position.scale.x, position.scale.y, position.scale.z);

	// Point Translation
	D3DXMATRIX point_translation;
	D3DXMatrixTranslation(&point_translation, position.point_translation.x, 
		position.point_translation.y, position.point_translation.z);

	// Rotation
	D3DXMATRIX rotation;
	D3DXMatrixRotationX(&rotation, D3DXToRadian(position.rotation.x));
	D3DXMatrixRotationY(&rotation, D3DXToRadian(position.rotation.y));
	D3DXMatrixRotationZ(&rotation, D3DXToRadian(position.rotation.z));

	// Translation
	D3DXMATRIX translation;
	D3DXMatrixTranslation(&translation, position.position.x, position.position.y, position.position.z);

	shader->setMatrix("gWorld", scale * point_translation * rotation * translation);

	paint(device, shader);
}