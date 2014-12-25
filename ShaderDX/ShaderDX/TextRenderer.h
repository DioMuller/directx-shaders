#pragma once
#include <d3dx9.h>
#include <string>

namespace dx9lib
{
	class TextRenderer
	{
		//////////////////////////////////////////
		// Attributes
		//////////////////////////////////////////
		private:
			LPD3DXFONT font;
			bool initialized = false;

		//////////////////////////////////////////
		// Constructor
		//////////////////////////////////////////
		public:
			TextRenderer();
			~TextRenderer();

		//////////////////////////////////////////
		// Methods
		//////////////////////////////////////////
		public:
			void initialize(IDirect3DDevice9* device);
			void drawText(IDirect3DDevice9* device, std::string text, int x, int y, DWORD color);
	};
}
