#pragma once
#include <d3d9.h>
#include "Mage/Effect.h"

class Camera
{
	//////////////////////////////////////////
	// Attributes
	//////////////////////////////////////////
	protected:
		D3DXVECTOR3 position;
		D3DXVECTOR3 target;
		D3DXVECTOR3 up;
		float fov;
		float near_distance;
		float far_distance;

	//////////////////////////////////////////
	// Constructors
	//////////////////////////////////////////
	public:
		Camera(D3DXVECTOR3 position, D3DXVECTOR3 target, D3DXVECTOR3 up, float fov, float near_distance, float far_distance);
		~Camera();

	//////////////////////////////////////////
	// Methods
	//////////////////////////////////////////
	public:
		// Process whatever should be executed every turn.
		virtual bool process(float time);
		// Transforms the camera position.
		void transform(IDirect3DDevice9* device, mage::Effect* shader);

		// Sets Camera Transform Matrix by Position.
		void setPosition(D3DXVECTOR3 position);
		// Sets Camera Transform Matrix by Position and Target.
		void setPosition(D3DXVECTOR3 position, D3DXVECTOR3 target);
		// Sets Camera Transform Matrix.
		void setPosition(D3DXVECTOR3 position, D3DXVECTOR3 target, D3DXVECTOR3 up);
		// Sets Camera Projection Matrix
		void setProjection(float fov, float near_distance, float far_distance);
};

