#pragma once
#include <d3d9.h>
#include <memory>
#include "Mage/Effect.h"



// Position struct.
typedef struct sPosition
{
	D3DXVECTOR3 position;
	D3DXVECTOR3 rotation;
	D3DXVECTOR3 scale;
	D3DXVECTOR3 point_translation;
} Position;

class Object
{
	//////////////////////////////////////////
	// Public Attributes
	//////////////////////////////////////////
	public: 
		Position position;

	//////////////////////////////////////////
	// Private Attributes
	//////////////////////////////////////////
	protected:
		std::string shaderTech;

	//////////////////////////////////////////
	// Constructor / Destructor
	//////////////////////////////////////////
	public:
		Object(std::string shaderTech);
		~Object();

	//////////////////////////////////////////
	// Lifecycle Methods
	//////////////////////////////////////////
	public:
		// Setups the scene.
		virtual void setup(IDirect3DDevice9* device);
		// Process whatever should be executed every turn.
		virtual bool process(float time);
		// Transforms object and paints it.
		void transformAndPaint(IDirect3DDevice9* device, mage::Effect* shader);

	protected:
		// Paints the scene on each loop.
		virtual void paint(IDirect3DDevice9* device, mage::Effect* shader);
};

