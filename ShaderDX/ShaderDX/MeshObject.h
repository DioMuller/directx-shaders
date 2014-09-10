#pragma once
#include "Object.h"
#include "Material.h"

class MeshObject : public Object
{
	//////////////////////////////////////////
	// Private Attributes
	//////////////////////////////////////////
	protected:
		std::vector<Material> materials;
		ID3DXMesh* mesh;

	//////////////////////////////////////////
	// Constructor / Destructor
	//////////////////////////////////////////
	public:
		MeshObject(std::string file, std::string shaderTech);
		~MeshObject();

	//////////////////////////////////////////
	// Lifecycle Methods
	//////////////////////////////////////////
	protected:
		// Paints the scene on each loop.
		virtual void paint(IDirect3DDevice9* device, mage::Effect* shader);
};

