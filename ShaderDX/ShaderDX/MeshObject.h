#pragma once
#include "mage/TString.h"
#include "Object.h"
#include "Material.h"

namespace dx9lib
{
	class MeshObject : public Object
	{
		//////////////////////////////////////////
		// Private Attributes
		//////////////////////////////////////////
		protected:
			std::vector<std::shared_ptr<Material>> materials;
			mage::TString file;
			ID3DXMesh* mesh;
			bool isLoaded;

		//////////////////////////////////////////
		// Constructor / Destructor
		//////////////////////////////////////////
		public:
			MeshObject(mage::TString file, std::string shader, std::string shaderTech);
			~MeshObject();

		//////////////////////////////////////////
		// Lifecycle Methods
		//////////////////////////////////////////
		protected:
			// Paints the scene on each loop.
			virtual void paint(IDirect3DDevice9* device, mage::Effect* shader);
			// Process whatever should be executed every turn.
			virtual bool process(float time);
			// Loads .x file into the Mesh.
			void loadXFile(IDirect3DDevice9* device);
	};
}
