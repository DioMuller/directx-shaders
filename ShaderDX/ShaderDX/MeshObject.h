#pragma once
#include "mage/TString.h"
#include "Object.h"
#include "Material.h"

class MeshObject : public Object
{
	//////////////////////////////////////////
	// Private Attributes
	//////////////////////////////////////////
	protected:
		std::vector<Material> materials;
		mage::TString file;
		ID3DXMesh* mesh;
		bool isLoaded;

	//////////////////////////////////////////
	// Constructor / Destructor
	//////////////////////////////////////////
	public:
		MeshObject(mage::TString file, std::string shaderTech);
		~MeshObject();

	//////////////////////////////////////////
	// Lifecycle Methods
	//////////////////////////////////////////
	protected:
		// Paints the scene on each loop.
		virtual void paint(IDirect3DDevice9* device, mage::Effect* shader);
		void loadXFile(IDirect3DDevice9* device);
};

