#include "MainGame.h"
#include "MeshObject.h"

using namespace dx9lib;

// Setups the scene.
void MainGame::setup(IDirect3DDevice9* device)
{
	running = true;

	scene.loadFromFile(Text::FromWString(Content::GetContentItemPath(Content::SCENES, "Default.xml")));
	scene.initialize(device);
}

// Process whatever should be executed every turn.
bool MainGame::process(float time)
{
	scene.process(time);

	return AbstractGameLoop::process(time);
}

// Paints the scene on each loop.
void MainGame::paint(IDirect3DDevice9* device)
{
	scene.paint(device);
}

// Executed on shutdown.
void MainGame::shutDown(IDirect3DDevice9* device)
{
	scene.finish(device);
	KeyboardInput::finalize();
	device->Release();
}

// Executed when an windows event is triggered.
void MainGame::processEvent(const mage::WindowsEvent& evt)
{
	// Windows events processing.
	if (evt.type == WM_KEYDOWN)
	{
		KeyboardInput::update(evt.wParam, true);

		if (KeyboardInput::isPressed(VK_ESCAPE) )
			running = false;
	}
	else if (evt.type == WM_KEYUP)
	{
		KeyboardInput::update(evt.wParam, false);
	}
}
