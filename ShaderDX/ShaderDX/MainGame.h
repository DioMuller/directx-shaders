#pragma once
#include "mage/AbstractGameLoop.h"
#include "mage/Effect.h"
#include "Object.h"

#include <d3dx9.h>
#include <vector>
#include <memory>
#include "Scene.h"

class MainGame : public mage::AbstractGameLoop
{
	//////////////////////////////////////////
	// Attributes
	//////////////////////////////////////////
	private:
		dx9lib::Scene scene;

	//////////////////////////////////////////
	// AbstractGameLoop Methods
	//////////////////////////////////////////
	public:
		// Setups the scene.
		virtual void setup(IDirect3DDevice9* device);
		// Process whatever should be executed every turn.
		virtual bool process(float time);
		// Paints the scene on each loop.
		virtual void paint(IDirect3DDevice9* device);
		// Executed on shutdown.
		virtual void shutDown(IDirect3DDevice9* device);
		// Executed when an windows event is triggered.
		virtual void processEvent(const mage::WindowsEvent& evt);
};

