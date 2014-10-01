#pragma once
#include <d3d9.h>

class Camera
{
	//////////////////////////////////////////
	// Constructors
	//////////////////////////////////////////
	public:
		Camera();
		~Camera();

	//////////////////////////////////////////
	// Methods
	//////////////////////////////////////////
	public:
		// Process whatever should be executed every turn.
		virtual bool process(float time);
		// Transforms the camera position.
		void transform(IDirect3DDevice9* device);
};

