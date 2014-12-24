#pragma once
#include "PlaneObject.h"

namespace dx9lib
{
	class TerrainObject : public PlaneObject
	{
		public:
			TerrainObject(std::string terrainFile, std::string textureFile, std::string shader, std::string shaderTech);
			~TerrainObject();
	};
}

