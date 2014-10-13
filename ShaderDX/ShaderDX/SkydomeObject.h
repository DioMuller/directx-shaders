#pragma once
#include "Object.h"

namespace dx9lib
{
	class SkydomeObject : public Object
	{
		public:
			SkydomeObject(std::string shaderTech);
			~SkydomeObject();
	};
}