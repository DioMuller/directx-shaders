#include "Material.h"

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

IDirect3DTexture9* Material::GetEmptyTexture()
{
	if (!emptyTexture)
	{
		// TODO: Load Empty Texture.
	}

	return emptyTexture;
}