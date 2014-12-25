#include "TextRenderer.h"

using namespace dx9lib;

TextRenderer::TextRenderer(){}
TextRenderer::~TextRenderer()
{
	font->Release();
	font = nullptr;
}

void TextRenderer::initialize(IDirect3DDevice9* device)
{
	D3DXCreateFont(device,    // the D3D Device
		20,    // font height
		0,    // default font width
		FW_ULTRABOLD,    // font weight
		1,    // not using MipLevels
		false,    // italic font
		DEFAULT_CHARSET,    // default character set
		OUT_DEFAULT_PRECIS,    // default OutputPrecision,
		DEFAULT_QUALITY,    // default Quality
		DEFAULT_PITCH | FF_DONTCARE,    // default pitch and family
		L"Arial",    // use Facename Arial
		&font);    // the font object

	initialized = true;
}

void TextRenderer::drawText(IDirect3DDevice9* device, std::string text, int x, int y, DWORD color)
{
	if ( !initialized ) return;

	RECT size;
	SetRect(&size, x, y, 800, 600);

	font->DrawTextA(NULL,
		text.c_str(),
		text.length(),
		&size,
		DT_LEFT | DT_TOP,
		color);
}
