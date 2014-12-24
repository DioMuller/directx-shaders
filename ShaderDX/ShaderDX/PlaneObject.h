#pragma once
#include "Object.h"
#include "Vertex.h"
#include "SimpleMesh.h"
#include "Material.h"

namespace dx9lib
{
	class PlaneObject : public Object
	{
		//////////////////////////////////////////
		// Attributes
		//////////////////////////////////////////
		protected:
			float width, height;
			int columns, rows;
			SimpleMesh* mesh;
			std::shared_ptr<Material> material;
			std::string textureFile;

		//////////////////////////////////////////
		// Constructor / Destructor
		//////////////////////////////////////////
		public:
			PlaneObject(float width, float height, int columns, int rows, std::string textureFile, std::string shader, std::string shaderTech);
			~PlaneObject();

		//////////////////////////////////////////
		// Lifecycle Methods
		//////////////////////////////////////////
		protected:
			// Paints the scene on each loop.
			virtual void paint(IDirect3DDevice9* device, mage::Effect* shader);
			// Process whatever should be executed every turn.
			virtual bool process(float time);
			// Loads plane geometry.
			virtual void loadGeometry(LPDIRECT3DDEVICE9 device);
			// Generates vertices.
			virtual std::vector<Vertex> GenerateVertices(float initial_x, float diff_x, float initial_z, float diff_z);
		};
}
