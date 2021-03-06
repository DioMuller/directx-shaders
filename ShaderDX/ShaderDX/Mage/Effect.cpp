#include "Effect.h"
#include "HandleError.h"

using namespace mage;

Effect::Effect(const TString& filename) :
  shader(nullptr), file(filename)
{
}

std::string Effect::compile(LPDIRECT3DDEVICE9 device)
{
	if (this->shader)
		return "";
	
	ID3DXBuffer* errors = 0;
	#if defined(DEBUG) | defined(_DEBUG)
		HR(D3DXCreateEffectFromFile(device, file.c_str(), 0, 0, D3DXSHADER_DEBUG, 0, &shader, &errors));
	#else
		HR(D3DXCreateEffectFromFile(device, file.c_str(), 0, 0, 0, 0, &shader, &errors));
	#endif

	if (errors)
	{
		std::string ret = static_cast<char*>(errors->GetBufferPointer());
		errors->Release();
		return ret;
	}

	this->device = device;
	return "";
}

Effect& Effect::setTechnique(const std::string& name)
{
	HR(shader->SetTechnique(shader->GetTechniqueByName(name.c_str())));
	return *this;
}

Effect& Effect::setFloat(const std::string& name, const float value)
{
	HR(shader->SetFloat(shader->GetParameterByName(0, name.c_str()), value));		
	return *this;
}

Effect& Effect::setMatrix(const std::string& name, const D3DXMATRIX& matrix)
{
	HR(shader->SetMatrix(shader->GetParameterByName(0, name.c_str()), &matrix));		
	return *this;
}

Effect& Effect::setMatrices(const std::string& name, const D3DXMATRIX* matrices, UINT count)
{
	HR(shader->SetMatrixArray(shader->GetParameterByName(0, name.c_str()), matrices, count));
	return *this;
}

Effect& Effect::setMatrices(const std::string& name, const std::vector<D3DXMATRIX>& matrices)
{
	HR(shader->SetMatrixArray(shader->GetParameterByName(0, name.c_str()), &matrices[0], matrices.size()));
	return *this;
}

Effect& Effect::setVector(const std::string& name, const D3DXVECTOR4& vector)
{
	HR(shader->SetVector(shader->GetParameterByName(0, name.c_str()), &vector));
	return *this;
}

Effect& Effect::setVector(const std::string& name, const D3DXVECTOR3& vector)
{
	HR(shader->SetVector(shader->GetParameterByName(0, name.c_str()), &D3DXVECTOR4(vector.x, vector.y, vector.z, 1.0f)));
	return *this;
}

Effect& Effect::setVector(const std::string& name, const D3DXVECTOR2& vector)
{	
	HR(shader->SetValue(shader->GetParameterByName(0, name.c_str()), &vector, sizeof(D3DXVECTOR2)));
	return *this;
}

Effect& Effect::setColor(const std::string& name, const D3DXCOLOR& color)
{
	auto result = shader->SetVector(shader->GetParameterByName(0, name.c_str()), &D3DXVECTOR4(color.r, color.g, color.b, color.a));

	if (result != S_OK)
	{
		// Changed for debug reasons.
		HR(result);
	}

	return *this;
}

Effect& Effect::setTexture(const std::string& name, 
const LPDIRECT3DBASETEXTURE9& texture)
{
	HR(shader->SetTexture(shader->GetParameterByName(0, 
		name.c_str()), texture));
	return *this;
}

Effect& Effect::commit()
{
	HR(shader->CommitChanges());
	return *this;
}

Effect::~Effect()
{
	if ( shader )
		shader->Release();
}
