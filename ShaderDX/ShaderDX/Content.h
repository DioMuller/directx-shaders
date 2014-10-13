#pragma once

#include <Windows.h>
#include <string>
#include <locale>
#include <codecvt>

#define PATH_MAX_LENGHT 256

namespace dx9lib
{
	class Content
	{
		public:
			static const std::wstring SCENES;
			static const std::wstring MODELS;
			static const std::wstring SHADERS;
			static const std::wstring TEXTURES;

		public:
			static std::wstring GetApplicationPath();
			static std::wstring GetContentPath(std::wstring type = L"");
			static std::wstring GetContentItemPathW(std::wstring type, std::wstring file);
			static std::wstring GetContentItemPath(std::wstring type, std::string file);
	};

	class Text
	{
		public:
			static std::string FromWString(std::wstring value);
			static std::wstring ToWString(std::string value);
	};
}