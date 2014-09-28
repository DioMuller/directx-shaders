#include "Material.h"
#include "mage/HandleError.h"
#include <D3dx9tex.h>

//////////////////////////////////////////
// Static Attributes
//////////////////////////////////////////
IDirect3DTexture9* Material::emptyTexture = nullptr;

//////////////////////////////////////////
// Constructor / Destructor
//////////////////////////////////////////
Material::Material()
{
}


Material::~Material()
{
	if (texture) delete texture;
}

//////////////////////////////////////////
// Static Methods
//////////////////////////////////////////

IDirect3DTexture9* Material::GetEmptyTexture(IDirect3DDevice9* device)
{
	if (!emptyTexture)
	{
		HR(D3DXCreateTextureFromFile(device, _T("Content\\Textures\\whitetex.dds"), &emptyTexture));
		// TODO: Load Empty Texture.
	}

	return emptyTexture;
}