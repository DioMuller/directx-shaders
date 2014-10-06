#include "Material.h"
#include "mage/HandleError.h"
#include <D3dx9tex.h>

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
		std::wstring texPath = getContentItemPathW(CONTENT_TEXTURES, L"whitetex.dds");
		HR(D3DXCreateTextureFromFile(device, texPath.c_str(), &emptyTexture));
	}

	return emptyTexture;
}