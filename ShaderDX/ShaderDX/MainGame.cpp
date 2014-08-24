#include "MainGame.h"

// Setups the scene.
void MainGame::setup(IDirect3DDevice9* device)
{
	running = true;

	// Load Shader
	shader = new mage::Effect(_T("Content/Shaders/MainShader.fx"));
	std::string error = shader->compile(device);
	if (!error.empty()) 
	{
		MessageBoxA(0, error.c_str(), 0, 0);
		exit(1);
	}
}

// Process whatever should be executed every turn.
bool MainGame::process(float time)
{
	return AbstractGameLoop::process(time);
}

// Paints the scene on each loop.
void MainGame::paint(IDirect3DDevice9* device)
{
	HR(device->Clear(0, NULL, D3DCLEAR_TARGET | D3DCLEAR_ZBUFFER, D3DCOLOR_XRGB(154, 206, 235), 1.0f, 0));
	HR(device->BeginScene());
	HR(device->EndScene());
	HR(device->Present(NULL, NULL, NULL, NULL));
}

// Executed on shutdown.
void MainGame::shutDown(IDirect3DDevice9* device)
{
	delete shader;
}

// Executed when an windows event is triggered.
void MainGame::processEvent(const mage::WindowsEvent& evt)
{
	// Windows events processing.
	if (evt.type == WM_KEYDOWN && evt.wParam == VK_ESCAPE)
		running = false;
}