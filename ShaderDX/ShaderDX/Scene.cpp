#include "Scene.h"

//////////////////////////////////////////
// Constructors
//////////////////////////////////////////
Scene::Scene()
{
}


Scene::~Scene()
{
}

//////////////////////////////////////////
// Methods
//////////////////////////////////////////

// Setups the scene.
void Scene::initialize(IDirect3DDevice9* device)
{

}

// Process whatever should be executed every turn.
bool Scene::process(float time)
{
	// Process Camera and Lights
	camera->process(time);
	light->process(time);

	// Process Objects
	for (auto object : objects)
	{
		object->process(time);
	}

	return true;
}

// Paints the scene on each loop.
void Scene::paint(IDirect3DDevice9* device)
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

// Executed on end.
void Scene::finish(IDirect3DDevice9* device)
{

}

// Loads scene from an XML file.
void Scene::loadFromFile(std::string path)
{

}