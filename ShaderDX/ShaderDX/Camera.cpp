#include "Camera.h"
#include "mage/GameWindow.h"
#include "KeyboardInput.h"

#define CAMERA_SPEED 25.0f

using namespace dx9lib;

Camera::Camera(D3DXVECTOR3 position, D3DXVECTOR3 target, D3DXVECTOR3 up, float fov, float near_distance, float far_distance)
{
	changed = true;

	original_position = position;
	original_target = target;
	original_up = up;

	setPosition(position, target, up);
	setProjection(fov, near_distance, far_distance);
}


Camera::~Camera()
{
}

bool Camera::process(float time)
{
	int x = 0, y = 0,  z = 0;

	// Check for Reset
	if (KeyboardInput::isPressed(Keys::SPACEBAR))
	{
		reset();
		return true;
	}

	// X
	if (KeyboardInput::isPressed(Keys::RIGHT) || KeyboardInput::isPressed(Keys::D))
	{
		x += 1;
	}
	if (KeyboardInput::isPressed(Keys::LEFT) || KeyboardInput::isPressed(Keys::A))
	{
		x -= 1;
	}

	// Y
	if (KeyboardInput::isPressed(Keys::PGUP) || KeyboardInput::isPressed(Keys::R))
	{
		y += 1;
	}
	if (KeyboardInput::isPressed(Keys::PGDOWN) || KeyboardInput::isPressed(Keys::F))
	{
		y -= 1;
	}

	// Z
	if (KeyboardInput::isPressed(Keys::UP) || KeyboardInput::isPressed(Keys::W))
	{
		z += 1;
	}
	if (KeyboardInput::isPressed(Keys::DOWN) || KeyboardInput::isPressed(Keys::S))
	{
		z -= 1;
	}

	// Check Movement
	if (x != 0 || y != 0 || z != 0)
	{
		float mx = (float) x * time * CAMERA_SPEED;
		float my = (float) y * time * CAMERA_SPEED;
		float mz = (float) z * time * CAMERA_SPEED;

		move(mx, my, mz);
	}
	
	// Return!
	return true;
}

void Camera::transform(IDirect3DDevice9* device, mage::Effect* shader)
{
	if (changed)
	{
		// View Transform
		D3DXMATRIX view;
		D3DXMatrixLookAtLH(&view, &position, &target, &up);
		shader->setMatrix("gView", view);
		shader->setVector("gCameraPos", position);


		// Projection transform
		D3DXMATRIX projection;
		D3DXMatrixPerspectiveFovLH(&projection, D3DXToRadian(fov), mage::GameWindow::get().getAspect(), near_distance, far_distance);
		shader->setMatrix("gProjection", projection);

		changed = false;
	}
}

// Sets Camera Transform Matrix by Position.
void Camera::setPosition(D3DXVECTOR3 position)
{
	setPosition(position, this->target, this->up);
}


// Sets Camera Transform Matrix by Position and Target.
void Camera::setPosition(D3DXVECTOR3 position, D3DXVECTOR3 target)
{
	setPosition(position, this->target, this->up);
}

// Sets Camera Transform Matrix.
void Camera::setPosition(D3DXVECTOR3 position, D3DXVECTOR3 target, D3DXVECTOR3 up)
{
	this->position = position;
	this->target = target;
	this->up = up;
	changed = true;
}

void Camera::move(float x, float y, float z)
{
	this->position.x += x;
	this->position.y += y;
	this->position.z += z;

	this->target.x += x;
	this->target.y += y;
	this->target.z += z;

	changed = true;
}

void Camera::reset()
{
	this->position = original_position;
	this->target = original_target;
	this->up = original_up;

	changed = true;
}

// Sets Camera Projection Matrix
void Camera::setProjection(float fov, float near_distance, float far_distance)
{
	this->fov = fov;
	this->near_distance = near_distance;
	this->far_distance = far_distance;
	changed = true;
}

std::string Camera::getPositionString()
{
	return "[ X = " + std::to_string(position.x) + 
		    " Y = " + std::to_string(position.y) +
			" Z = " + std::to_string(position.z) + " ]";
}
