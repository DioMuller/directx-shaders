#include "Object.h"
#include <d3dx9math.h>

using namespace dx9lib;

//////////////////////////////////////////
// Constructor / Destructor
//////////////////////////////////////////
Object::Object(std::string shader, std::string shaderTech)
{
	this->shader = shader;
	this->shaderTech = shaderTech;
	
	transform.position = { 0.0f, 0.0f, 0.0f };
	transform.scale = { 1.0f, 1.0f, 1.0f };
	transform.rotation = { 0.0f, 0.0f, 0.0f };
	transform.point_translation = { 0.0f, 0.0f, 0.0f };
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
	D3DXMatrixScaling(&scale, transform.scale.x, transform.scale.y, transform.scale.z);

	// Point Translation
	D3DXMATRIX point_translation;
	D3DXMatrixTranslation(&point_translation, transform.point_translation.x,
		transform.point_translation.y, transform.point_translation.z);

	// Rotation
	D3DXMATRIX rotationX;
	D3DXMATRIX rotationY;
	D3DXMATRIX rotationZ;

	D3DXMatrixRotationX(&rotationX, D3DXToRadian(transform.rotation.x));
	D3DXMatrixRotationY(&rotationY, D3DXToRadian(transform.rotation.y));
	D3DXMatrixRotationZ(&rotationZ, D3DXToRadian(transform.rotation.z));

	D3DXMATRIX rotation = rotationX * rotationY * rotationZ;

	// Translation
	D3DXMATRIX translation;
	D3DXMatrixTranslation(&translation, transform.position.x, transform.position.y, transform.position.z);

	shader->setMatrix("gWorld", scale * point_translation * rotation * translation);

	// Paint Object
	paint(device, shader);
}

// Paints the transformed object on the screen.
void Object::paint(IDirect3DDevice9* device, mage::Effect* shader)
{

}

// Get the shader ID.
std::string Object::shaderName()
{
	return shader;
}
