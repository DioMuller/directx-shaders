#include "Camera.h"
#include "mage/GameWindow.h"

using namespace dx9lib;

Camera::Camera(D3DXVECTOR3 position, D3DXVECTOR3 target, D3DXVECTOR3 up, float fov, float near_distance, float far_distance)
{
	changed = true;
	setPosition(position, target, up);
	setProjection(fov, near_distance, far_distance);
}


Camera::~Camera()
{
}

bool Camera::process(float time)
{
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

// Sets Camera Projection Matrix
void Camera::setProjection(float fov, float near_distance, float far_distance)
{
	this->fov = fov;
	this->near_distance = near_distance;
	this->far_distance = far_distance;
	changed = true;
}