#include "Material.h"
#include "mage/HandleError.h"
#include <D3dx9tex.h>

using namespace dx9lib;

//////////////////////////////////////////
// Static Attributes
//////////////////////////////////////////
IDirect3DTexture9* Material::emptyTexture = nullptr;

#include <direct.h>

//////////////////////////////////////////
// Constructor / Destructor
//////////////////////////////////////////
Material::Material()
{
}


Material::~Material()
{
	if (texture)
	{
		texture->Release();
	}
}

//////////////////////////////////////////
// Static Methods
//////////////////////////////////////////

IDirect3DTexture9* Material::GetEmptyTexture(IDirect3DDevice9* device)
{
	if (!emptyTexture)
	{
		std::wstring texPath = Content::GetContentItemPathW(Content::TEXTURES, L"whitetex.dds");
		HR(D3DXCreateTextureFromFile(device, texPath.c_str(), &emptyTexture));
	}

	return emptyTexture;
}