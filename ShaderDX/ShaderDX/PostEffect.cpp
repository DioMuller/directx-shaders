#include "PostEffect.h"


PostEffect::PostEffect(std::wstring effectFile, std::string tech, D3DXVECTOR4 dimensions)
{
	this->shader = new mage::Effect(effectFile);
	this->tech = tech;
	this->viewport = { dimensions[0], dimensions[1], dimensions[2], dimensions[3], 0.0f, 1.0f };
}


PostEffect::~PostEffect()
{
}
