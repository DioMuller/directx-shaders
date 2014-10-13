#include "Object.h"
#include <d3dx9math.h>

using namespace dx9lib;

//////////////////////////////////////////
// Constructor / Destructor
//////////////////////////////////////////
Object::Object(std::string shaderTech)
{
	this->shaderTech = shaderTech;
	
	position.position = { 0.0f, 0.0f, 0.0f };
	position.scale = { 1.0f, 1.0f, 1.0f };
	position.rotation = { 0.0f, 0.0f, 0.0f };
	position.point_translation = { 0.0f, 0.0f, 0.0f };
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
	D3DXMATRIX rotationX;
	D3DXMATRIX rotationY;
	D3DXMATRIX rotationZ;

	D3DXMatrixRotationX(&rotationX, D3DXToRadian(position.rotation.x));
	D3DXMatrixRotationY(&rotationY, D3DXToRadian(position.rotation.y));
	D3DXMatrixRotationZ(&rotationZ, D3DXToRadian(position.rotation.z));

	D3DXMATRIX rotation = rotationX * rotationY * rotationZ;

	// Translation
	D3DXMATRIX translation;
	D3DXMatrixTranslation(&translation, position.position.x, position.position.y, position.position.z);

	shader->setMatrix("gWorld", scale * point_translation * rotation * translation);

	// Paint Object
	paint(device, shader);
}

// Paints the transformed object on the screen.
void Object::paint(IDirect3DDevice9* device, mage::Effect* shader)
{

}