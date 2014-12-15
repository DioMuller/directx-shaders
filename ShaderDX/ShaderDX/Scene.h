#pragma once
#include <memory>

#include "Mage/Effect.h"

#include "Object.h"
#include "Camera.h"
#include "Light.h"
#include "PostEffect.h"

namespace dx9lib
{
	class Scene
	{
		//////////////////////////////////////////
		// Attributes
		//////////////////////////////////////////
		private:
			mage::Effect* shader;
			std::shared_ptr<PostEffect> postProcessing;
			std::vector<std::shared_ptr<Object>> objects;
			std::shared_ptr<Camera> camera;
			std::shared_ptr<Light> light;

		//////////////////////////////////////////
		// Constructor
		//////////////////////////////////////////
		public:
			Scene();
			~Scene();

		//////////////////////////////////////////
		// Methods
		//////////////////////////////////////////
		public:
			// Loads Scene from File.
			void loadFromFile(std::string path);
			// Setups the scene.
			virtual void initialize(IDirect3DDevice9* device);
			// Process whatever should be executed every turn.
			virtual bool process(float time);
			// Paints the scene on each loop.
			virtual void paint(IDirect3DDevice9* device);
			// Executed on end.
			virtual void finish(IDirect3DDevice9* device);
	};

}
