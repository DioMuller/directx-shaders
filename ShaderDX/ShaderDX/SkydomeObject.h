#pragma once
#include "Object.h"
#include "Material.h"
#include "SimpleMesh.h"

namespace dx9lib
{
	class SkydomeObject : public Object
	{
		//////////////////////////////////////////
		// Attributes
		//////////////////////////////////////////
		private:
			std::shared_ptr<Material> material;
			std::string textureFile;
			bool isLoaded;
			float timeElapsed;
			SimpleMesh* mesh;

		//////////////////////////////////////////
		// Constructor / Destructor
		//////////////////////////////////////////
		public:
			SkydomeObject(std::string texture, std::string shader, std::string shaderTech);
			~SkydomeObject();

		//////////////////////////////////////////
		// Lifecycle Methods
		//////////////////////////////////////////
		protected:
			// Paints the scene on each loop.
			virtual void paint(IDirect3DDevice9* device, mage::Effect* shader);
			// Process whatever should be executed every turn.
			virtual bool process(float time);
			// Loads skybox geometry.
			virtual void loadGeometry(LPDIRECT3DDEVICE9 device);
	};
}
