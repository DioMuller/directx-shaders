#include "mage/GameWindow.h"
#include "MainGame.h"

#define WINDOW_WIDTH 800
#define WINDOW_HEIGHT 600
#define WINDOW_POS_X 100
#define WINDOW_POS_Y 100
#define WINDOW_TITLE "Shaders and More"

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, PSTR pCmdLine, int nShowCmd)
{
	// Gets the window subsystem.
	mage::GameWindow& window = mage::GameWindow::get();

	// Tries initialization.
	if (window.setup(hInstance, nShowCmd, _T(WINDOW_TITLE), WINDOW_POS_X, WINDOW_POS_Y, WINDOW_WIDTH, WINDOW_HEIGHT))
	{
		// If initialization was correct, run the game loop.
		window.run(new MainGame());
	}

	// Finalizes the system.
	window.shutDown();
}