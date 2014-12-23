#pragma once
#include "Object.h"

namespace dx9lib
{
	class TerrainObject : public Object
	{
		public:
			TerrainObject(std::string shader, std::string shaderTech);
			~TerrainObject();
	};
}

