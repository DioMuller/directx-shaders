#include "MainGame.h"
#include "MeshObject.h"

// Setups the scene.
void MainGame::setup(IDirect3DDevice9* device)
{
	running = true;

	// Initialize Camera
	D3DXVECTOR3 cameraPosition(1.0f, 0.8f, 2.0f); //(10.0f, 2.5f, 2.0f);
	camera = std::shared_ptr<Camera>(new Camera(cameraPosition, { 0.0, cameraPosition.y, 0.0f }, { 0.0f, 1.0f, 0.0f }, 60.0f, 1.0f, 5000.0f));

	// Initialize lights
	light = std::shared_ptr<Light>(new Light({ -1.0f, -1.0f, 1.0f }, { 0.5f, 0.5f, 0.5f }, { 1.0f, 1.0f, 1.0f }, { 1.0f, 1.0f, 1.0f }));

	// Load Shader
	shader = new mage::Effect(_T("Content/Shaders/PhongShader.fx"));
	std::string error = shader->compile(device);
	if (!error.empty()) 
	{
		MessageBoxA(0, error.c_str(), 0, 0);
		exit(1);
	}

	// Load Objects
	//objects.push_back(std::shared_ptr<MeshObject>(new MeshObject(L"Content\\Models\\skullocc.x", "PhongTech")));
	//objects[0]->position.scale = { 0.3f, 0.3f, 0.3f };

	objects.push_back(std::shared_ptr<MeshObject>(new MeshObject(L"Content\\Models\\Dwarf.x", "PhongTech")));
}

// Process whatever should be executed every turn.
bool MainGame::process(float time)
{
	// Process Camera
	camera->process(time);
	light->process(time);

	// Process Objects
	// Draw all the objects on the scene.
	for (auto object : objects)
	{
		object->process(time);
	}

	return AbstractGameLoop::process(time);
}

// Paints the scene on each loop.
void MainGame::paint(IDirect3DDevice9* device)
{
	// Clears the Scene.
	HR(device->Clear(0, NULL, D3DCLEAR_TARGET | D3DCLEAR_ZBUFFER, D3DCOLOR_XRGB(154, 206, 235), 1.0f, 0));
	
	// Begins drawing the scene.
	HR(device->BeginScene());

	// Update camera transform and turn lights on.
	camera->transform(device, shader);
	light->paint(device, shader);

	// Draw all the objects on the scene.
	for (auto object : objects)
	{
		object->transformAndPaint(device, shader);
	}

	// Ends drawing the scene.
	HR(device->EndScene());
	// Presents scene / switches buffer.
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