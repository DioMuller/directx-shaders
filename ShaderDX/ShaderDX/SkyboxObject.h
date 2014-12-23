#pragma once
#include "Object.h"

namespace dx9lib
{
	class SkyboxObject : public Object
	{
		public:
			SkyboxObject(std::string shader, std::string shaderTech);
			~SkyboxObject();
	};
}
