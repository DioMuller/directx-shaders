#pragma once
#include <d3d9.h>
#include "Mage/Effect.h"

namespace dx9lib
{
	class Light
	{
		//////////////////////////////////////////
		// Attributes
		//////////////////////////////////////////
		protected:
			D3DXVECTOR3 direction;
			D3DXVECTOR3 ambientColor;
			D3DXVECTOR3 diffuseColor;
			D3DXVECTOR3 specularColor;
			bool changed;

		//////////////////////////////////////////
		// Constructor
		//////////////////////////////////////////
		public:
			Light(D3DXVECTOR3 direction, D3DXVECTOR3 ambient, D3DXVECTOR3 diffuse, D3DXVECTOR3 specular);
			~Light();

		//////////////////////////////////////////
		// Methods
		//////////////////////////////////////////
		public:
			// Process whatever should be executed every turn.
			virtual bool process(float time);
			// "Paints" the light on the scene.
			void paint(IDirect3DDevice9* device, mage::Effect* shader);
	};

}