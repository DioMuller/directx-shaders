#include "MainGame.h"
#include "MeshObject.h"

using namespace dx9lib;

// Setups the scene.
void MainGame::setup(IDirect3DDevice9* device)
{
	running = true;
	scene = new Scene();
	scene->loadFromFile(Text::FromWString(Content::GetContentItemPath(Content::SCENES, "Default.xml")));
	scene->initialize(device);
}

// Process whatever should be executed every turn.
bool MainGame::process(float time)
{
	if (dialogOpen) return true;
	scene->process(time);

	return AbstractGameLoop::process(time);
}

// Paints the scene on each loop.
void MainGame::paint(IDirect3DDevice9* device)
{
	if (dialogOpen) return;

	if (openDialog)
	{
		loadSceneDialog(device);
		return;
	}

	scene->paint(device);
}

// Executed on shutdown.
void MainGame::shutDown(IDirect3DDevice9* device)
{
	scene->finish(device);
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
	}
	else if (evt.type == WM_KEYUP)
	{
		KeyboardInput::update(evt.wParam, false);
	}

	if (KeyboardInput::isPressed(VK_ESCAPE))
		running = false;

	if (KeyboardInput::isPressed(Keys::F2))
	{
		KeyboardInput::update(Keys::F2, false);
		openDialog = true;
	}
}

void MainGame::loadSceneDialog(IDirect3DDevice9* device)
{
	openDialog = false;
	if ( dialogOpen ) return;
	dialogOpen = true; 

	OPENFILENAME ofn;       // common dialog box structure
	wchar_t szFile[260];       // buffer for file name
	HWND hwnd = GetActiveWindow(); // owner window
	//HANDLE hf;              // file handle
	std::wstring path = Content::GetContentItemPath(Content::SCENES, "");

	// Initialize OPENFILENAME
	ZeroMemory(&ofn, sizeof(ofn));
	ofn.lStructSize = sizeof(ofn);
	ofn.hwndOwner = hwnd;
	ofn.lpstrFile = szFile;
	// Set lpstrFile[0] to '\0' so that GetOpenFileName does not 
	// use the contents of szFile to initialize itself.
	ofn.lpstrFile[0] = '\0';
	ofn.nMaxFile = sizeof(szFile);
	ofn.lpstrFilter = L"All\0*.*\0Text\0*.XML\0";
	ofn.nFilterIndex = 1;
	ofn.lpstrFileTitle = NULL;
	ofn.nMaxFileTitle = 0;
	ofn.lpstrInitialDir = path.c_str();
	ofn.Flags = OFN_PATHMUSTEXIST | OFN_FILEMUSTEXIST;

	// Display the Open dialog box. 

	if (GetOpenFileName(&ofn) == TRUE)
	{
		if(scene) delete scene;
		scene = new Scene();
		scene->loadFromFile(Text::FromWString(std::wstring(ofn.lpstrFile)));
		scene->initialize(device);
		openDialog = false;
		dialogOpen = false;
	}
}
