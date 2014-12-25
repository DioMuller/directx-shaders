#include "Content.h"

using namespace dx9lib;

const std::wstring Content::SCENES = L"Scenes";
const std::wstring Content::MODELS = L"Models";
const std::wstring Content::SHADERS = L"Shaders";
const std::wstring Content::TEXTURES = L"Textures";

std::wstring Content::GetApplicationPath()
{
	wchar_t path[PATH_MAX_LENGHT];

	if (!GetModuleFileName(NULL, path, PATH_MAX_LENGHT))
	{
		return L"";
	}

	auto strpath = std::wstring(path);
	auto pos = strpath.find_last_of(L"\\/");
	return strpath.substr(0, pos);

}

std::wstring Content::GetContentPath(std::wstring type)
{
	return GetApplicationPath() + L"\\Content\\" + type;
}


std::wstring Content::GetContentItemPathW(std::wstring type, std::wstring file)
{
	return GetContentPath(type) + L"\\" + file;
}

std::wstring Content::GetContentItemPath(std::wstring type, std::string file)
{
	std::wstring filew = Text::ToWString(file);

	return Content::GetContentItemPathW(type, filew);
}

// String functions
std::string Text::FromWString(std::wstring value)
{
	std::wstring_convert<std::codecvt_utf8_utf16<wchar_t>> converter;
	return converter.to_bytes(value);
}

std::wstring Text::ToWString(std::string value)
{
	std::wstring_convert<std::codecvt_utf8_utf16<wchar_t>> converter;
	return converter.from_bytes(value);
}
