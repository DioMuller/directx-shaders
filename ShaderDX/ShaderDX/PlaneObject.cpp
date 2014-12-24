#include "PlaneObject.h"

using namespace dx9lib;


//////////////////////////////////////////
// Constructor / Destructor
//////////////////////////////////////////
PlaneObject::PlaneObject(float width, float height, int columns, int rows, std::string textureFile, std::string shader, std::string shaderTech) : Object(shader, shaderTech)
{
	this->width = width;
	this->height = height;
	this->columns = columns;
	this->rows = rows;

	this->mesh = nullptr;
}


PlaneObject::~PlaneObject()
{
}

//////////////////////////////////////////
// Lifecycle Methods
//////////////////////////////////////////

// Paints the scene on each loop.
void PlaneObject::paint(IDirect3DDevice9* device, mage::Effect* shader)
{
	if (!mesh)
	{
		loadGeometry(device);
	}

	// If it has texture, use it. Else, use the default texture.
	auto tex = material->texture ? material->texture : Material::GetEmptyTexture(device);
	shader->setTexture("gTexture", tex);

	shader->commit();

	shader->execute([this](LPDIRECT3DDEVICE9 device)
	{
		mesh->Draw(device);
	});
}

// Process whatever should be executed every turn.
bool PlaneObject::process(float time)
{
	return Object::process(time);
}

// Loads plane geometry.
void PlaneObject::loadGeometry(LPDIRECT3DDEVICE9 device)
{
	mesh = new SimpleMesh();

	std::vector<DWORD> indexes;

	// Distance difference between each vertex (x and Z)
	float diff_x = width / (float)columns;
	float diff_z = height / (float)rows;

	// Initial position where the mesh will be drawn. 
	float initial_x = -(width / 2);
	float initial_z = -(height / 2);

	// Vertex count
	mesh->vertices = columns * rows;

	// Triangle count
	mesh->triangles = 0;

	// Create vertexes
	std::vector<Vertex> vertices = GenerateVertices(initial_x, diff_x, initial_x, diff_z);
	// End Create Vertexes.

	// Create indexes
	for (int i = 0; i < rows - 1; ++i) // -1 because each triangle uses 2 rows.
	{
		for (int j = 0; j < columns - 1; ++j) // -1 because each triangle uses 2 columns.
		{
			// First Triangle
			// 1 2
			// 3
			indexes.push_back((DWORD)(i * columns + j));
			indexes.push_back((DWORD)(i * columns + j + 1));
			indexes.push_back((DWORD)((i + 1) * columns + j));
			mesh->triangles++;

			// Second triangle
			//   2
			// 1 3
			indexes.push_back((DWORD)((i + 1) * columns + j));
			indexes.push_back((DWORD)(i * columns + j + 1));
			indexes.push_back((DWORD)((i + 1) * columns + j + 1));
			mesh->triangles++;
		}
	}

	mesh->indexes = indexes.size();

	mesh->vertexBuffer = Vertex::createVertexBuffer(device, vertices);
	device->CreateIndexBuffer(sizeof(WORD) * mesh->indexes, 0, D3DFMT_INDEX16, D3DPOOL_MANAGED, &mesh->indexBuffer, nullptr);

	// Load Texture
	this->material = std::shared_ptr<Material>(new Material());

	IDirect3DTexture9* tex = nullptr;
	std::wstring texFN = Content::GetContentItemPath(Content::TEXTURES, textureFile);
	HR(D3DXCreateTextureFromFile(device, texFN.c_str(), &tex));
	this->material->texture = tex;
}

// Generates vertices.
std::vector<Vertex> PlaneObject::GenerateVertices(float initial_x, float diff_x, float initial_z, float diff_z)
{
	auto vertices = std::vector<Vertex>();

	for (int i = 0; i < columns; i++)
	{
		for (int j = 0; j < rows; j++)
		{
			vertices.push_back(Vertex(D3DXVECTOR3(initial_x + (i * diff_x), 0.0f, initial_z + (j * diff_z)), D3DXVECTOR3(0, 0, 0), D3DXVECTOR2(0, 0)));
		}
	}

	return vertices;
}
