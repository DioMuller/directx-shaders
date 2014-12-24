#include "TerrainObject.h"

using namespace dx9lib;

TerrainObject::TerrainObject(std::string terrainFile, std::string textureFile, std::string shader, std::string shaderTech) : PlaneObject(1.0, 1.0, 10, 10, textureFile, shader, shaderTech)
{
}


TerrainObject::~TerrainObject()
{
}
