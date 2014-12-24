#include "Scene.h"
#include "Content.h"
#include "TinyXML2/tinyxml2.h"

#include "MeshObject.h"
#include "SkydomeObject.h"

using namespace dx9lib;

#define SHADER_OBJECT "Object"
#define SHADER_POSTPROCESSING "PostProcessing"

//////////////////////////////////////////
// Constructors
//////////////////////////////////////////
Scene::Scene()
{
	objectShaders = std::map<std::string, mage::Effect*>();
	postProcessing = nullptr;
}


Scene::~Scene()
{
	while (!objectShaders.empty())
	{
		auto it = objectShaders.begin();
		objectShaders.erase(it->first);
		delete it->second;
	}
}

//////////////////////////////////////////
// Methods
//////////////////////////////////////////

// Setups the scene.
void Scene::initialize(IDirect3DDevice9* device)
{
	for (auto it = objectShaders.begin(); it != objectShaders.end(); ++it)
	{
		std::string error = it->second->compile(device);
		if (!error.empty()) {
			MessageBoxA(0, error.c_str(), 0, 0);
			exit(1);
		}
	}
	
	if (postProcessing)
	{
		postProcessing->initialize(device);
	}
}

// Process whatever should be executed every turn.
bool Scene::process(float time)
{
	// Process Camera and Lights
	camera->process(time);
	light->process(time);

	// Process Objects
	for (auto object : objects)
	{
		object->process(time);
	}

	return true;
}

// Paints the scene on each loop.
void Scene::paint(IDirect3DDevice9* device)
{
	if (postProcessing)
	{
		postProcessing->begin(device);
	}

	// Clears the Scene.
	HR(device->Clear(0, NULL, D3DCLEAR_TARGET | D3DCLEAR_ZBUFFER, CLEAR_COLOR, 1.0f, 0));

	// Begins drawing the scene.
	HR(device->BeginScene());

	for (auto it = objectShaders.begin(); it != objectShaders.end(); ++it)
	{
		auto shader = it->second;
		// Update camera transform and turn lights on.
		camera->transform(device, shader);
		light->paint(device, shader);

		// Draw all the objects on the scene.
		for (auto object : objects)
		{
			if (object->shaderName() == it->first)
			{
				object->transformAndPaint(device, shader);
			}
		}
	}

	if (postProcessing)
	{
		postProcessing->process(device);
	}
	else
	{
		// Ends drawing the scene.
		HR(device->EndScene());
	}

	// Presents scene / switches buffer.
	HR(device->Present(NULL, NULL, NULL, NULL));
	if (postProcessing)
	{
		postProcessing->end(device);
	}
}

// Executed on end.
void Scene::finish(IDirect3DDevice9* device)
{
	while (!objectShaders.empty())
	{
		auto it = objectShaders.begin();
		delete it->second;

		objectShaders.erase(it->first);
	}
}

// Loads scene from an XML file.
void Scene::loadFromFile(std::string path)
{
	tinyxml2::XMLDocument doc;
	doc.LoadFile(path.c_str());

	/////////////////////
	// Get Root Element
	/////////////////////
	auto root = doc.FirstChildElement("Scene");

	if (root)
	{
		/////////////////////
		// Load Shader
		/////////////////////
		auto shaderElement = root->FirstChildElement("Shader");

		while (shaderElement)
		{
			std::string shaderFile = shaderElement->Attribute("File");
			std::string shaderType = shaderElement->Attribute("Type");
			std::string shaderId = shaderElement->Attribute("Id");
			std::string shaderPath = shaderType + "\\" + shaderFile;
			
			if (shaderType == SHADER_OBJECT)
			{
				objectShaders[shaderId] = new mage::Effect(Content::GetContentItemPath(Content::SHADERS, shaderPath));
			}
			else if (shaderType == SHADER_POSTPROCESSING)
			{
				//TODO: Non-fixed viewport size.
				postProcessing = std::shared_ptr<PostEffect>(new PostEffect(Content::GetContentItemPath(Content::SHADERS, shaderPath), shaderElement->Attribute("Tech"), {0,0, 800,600 }));
			}

			shaderElement = shaderElement->NextSiblingElement("Shader");
		}

		/////////////////////
		// Load Camera
		/////////////////////
		auto cameraElement = root->FirstChildElement("Camera");

		if (cameraElement)
		{
			// Camera Parameters
			float fov = std::stof(cameraElement->Attribute("Fov"));
			float neardist = std::stof(cameraElement->Attribute("Near"));
			float fardist = std::stof(cameraElement->Attribute("Far"));

			// Camera Position
			auto cameraPosition = cameraElement->FirstChildElement("Position");
			D3DXVECTOR3 positionVec = D3DXVECTOR3(0, 0, 0);

			if (cameraPosition)
			{
				positionVec.x = std::stof(cameraPosition->Attribute("X"));
				positionVec.y = std::stof(cameraPosition->Attribute("Y"));
				positionVec.z = std::stof(cameraPosition->Attribute("Z"));
			}

			// Camera Target
			auto cameraTarget = cameraElement->FirstChildElement("Target");
			D3DXVECTOR3 targetVec = D3DXVECTOR3(0, 0, 0);

			if (cameraTarget)
			{
				targetVec.x = std::stof(cameraTarget->Attribute("X"));
				targetVec.y = std::stof(cameraTarget->Attribute("Y"));
				targetVec.z = std::stof(cameraTarget->Attribute("Z"));
			}


			// Camera Up
			auto cameraUp = cameraElement->FirstChildElement("Up");
			D3DXVECTOR3 upVec = D3DXVECTOR3(0, 0, 0);

			if (cameraUp)
			{
				upVec.x = std::stof(cameraUp->Attribute("X"));
				upVec.y = std::stof(cameraUp->Attribute("Y"));
				upVec.z = std::stof(cameraUp->Attribute("Z"));
			}

			camera = std::shared_ptr<Camera>(new Camera(positionVec, targetVec, upVec, fov, neardist, fardist));
		}

		/////////////////////
		// Load Lights
		/////////////////////
		auto lightElement = root->FirstChildElement("Light");

		if (lightElement)
		{
			// Light Direction
			auto lightDirection = lightElement->FirstChildElement("Direction");
			D3DXVECTOR3 directionVec = D3DXVECTOR3(0,0,0);

			if (lightDirection)
			{
				directionVec.x = std::stof(lightDirection->Attribute("X"));
				directionVec.y = std::stof(lightDirection->Attribute("Y"));
				directionVec.z = std::stof(lightDirection->Attribute("Z"));
			}

			// Light Ambient
			auto lightAmbient = lightElement->FirstChildElement("Ambient");
			D3DXVECTOR3 ambientVec = D3DXVECTOR3(0, 0, 0);

			if (lightAmbient)
			{
				ambientVec.x = std::stof(lightAmbient->Attribute("X"));
				ambientVec.y = std::stof(lightAmbient->Attribute("Y"));
				ambientVec.z = std::stof(lightAmbient->Attribute("Z"));
			}

			// Light Diffuse
			auto lightDiffuse = lightElement->FirstChildElement("Diffuse");
			D3DXVECTOR3 diffuseVec = D3DXVECTOR3(0, 0, 0);

			if (lightDiffuse)
			{
				diffuseVec.x = std::stof(lightDiffuse->Attribute("X"));
				diffuseVec.y = std::stof(lightDiffuse->Attribute("Y"));
				diffuseVec.z = std::stof(lightDiffuse->Attribute("Z"));
			}

			// Light Specular
			auto lightSpecular = lightElement->FirstChildElement("Specular");
			D3DXVECTOR3 specularVec = D3DXVECTOR3(0, 0, 0);

			if (lightSpecular)
			{
				specularVec.x = std::stof(lightSpecular->Attribute("X"));
				specularVec.y = std::stof(lightSpecular->Attribute("Y"));
				specularVec.z = std::stof(lightSpecular->Attribute("Z"));
			}

			// Initialize Lights
			light = std::shared_ptr<Light>(new Light(directionVec, ambientVec, diffuseVec, specularVec));
		}

		/////////////////////
		// Load Objects
		/////////////////////
		auto objectsElement = root->FirstChildElement("Objects");
		if (objectsElement)
		{
			auto nextObject = objectsElement->FirstChildElement();

			while (nextObject != nullptr)
			{
				std::string name = nextObject->Name();
				Object* object = nullptr;

				#pragma region Load Model
				if (name == "MeshObject")
				{
					std::string id = nextObject->Attribute("Id");
					std::string shader = nextObject->Attribute("Shader");
					std::wstring model = Content::GetContentItemPath(Content::MODELS, nextObject->Attribute("Model"));
					std::string tech = nextObject->Attribute("Tech");

					object = new MeshObject(model,shader, tech);
				}

				if (name == "SkydomeObject")
				{
					std::string id = nextObject->Attribute("Id");
					std::string shader = nextObject->Attribute("Shader");
					std::string texture = nextObject->Attribute("Texture");
					std::string tech = nextObject->Attribute("Tech");

					object = new SkydomeObject(texture, shader, tech);
				}
				#pragma endregion Load Model

				#pragma region Transforms
				// In-Object transformations, if the object was loaded.
				if (object)
				{
					// Load Transforms
					auto transforms = nextObject->FirstChildElement("Transforms");

					if (transforms)
					{
						auto transform = transforms->FirstChildElement("Transform");

						while (transform)
						{
							// Get Transform Type
							std::string type = transform->Attribute("Type");
							
							// Get Transform Value
							float x = std::stof(transform->Attribute("X"));
							float y = std::stof(transform->Attribute("Y"));
							float z = std::stof(transform->Attribute("Z"));

							// Executes transform
							if (type == "Scale")
							{
								object->transform.scale = D3DXVECTOR3(x, y, z);
							}
							else if (type == "Position")
							{
								object->transform.position = D3DXVECTOR3(x, y, z);
							}
							else if (type == "PointTranslation")
							{
								object->transform.point_translation = D3DXVECTOR3(x, y, z);
							}
							else if (type == "Rotation")
							{
								object->transform.rotation = D3DXVECTOR3(x, y, z);
							}

							// Get next element
							transform = transform->NextSiblingElement("Transform");
						}

					}

					// Add Object to scene
					objects.push_back(std::shared_ptr<Object>(object));
				}
				#pragma endregion Transforms

				// Get next object
				nextObject = nextObject->NextSiblingElement();
			}
		}
	}
	else
	{
		// TODO: Log "No Root tag "Scene" found.
	}
}
