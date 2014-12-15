#pragma once
#include "Mage/Effect.h"

class PostEffect
{
	private:
		D3DVIEWPORT9 viewport;
		mage::Effect* shader;
		std::string tech;
	public:
		PostEffect(std::wstring effectFile, std::string tech, D3DXVECTOR4 dimensions);
		~PostEffect();
};

