#pragma once
#include <d3d9.h>

class Object
{
	//////////////////////////////////////////
	// Constructor / Destructor
	//////////////////////////////////////////
	public:
		Object();
		~Object();

	//////////////////////////////////////////
	// Lifecycle Methods
	//////////////////////////////////////////
	public:
		// Setups the scene.
		virtual void setup(IDirect3DDevice9* device);
		// Process whatever should be executed every turn.
		virtual bool process(float time);
		// Paints the scene on each loop.
		virtual void paint(IDirect3DDevice9* device);
};

