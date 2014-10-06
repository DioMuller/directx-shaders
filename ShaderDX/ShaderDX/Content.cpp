#include "Content.h"

std::wstring getApplicationPath()
{
	wchar_t path[PATH_MAX_LENGHT];
	if (!GetCurrentDirectory(_countof(path), path))
	{
		return L"";
	}

	return std::wstring(path);

}

std::wstring getContentPath(std::wstring type)
{
	return getApplicationPath() + L"\\Content\\" + type;
}


std::wstring getContentItemPathW(std::wstring type, std::wstring file)
{
	return getContentPath(type) + L"\\" + file;
}

std::wstring getContentItemPath(std::wstring type, std::string file)
{
	std::wstring_convert<std::codecvt_utf8_utf16<wchar_t>> converter;
	std::wstring filew = converter.from_bytes(file);

	return getContentItemPathW(type, filew);
}