#ifndef __CONTENT_H__
#define __CONTENT_H__

#include <Windows.h>
#include <string>
#include <locale>
#include <codecvt>

#define PATH_MAX_LENGHT 256

#define CONTENT_SCENES L"Scenes"
#define CONTENT_MODELS L"Models"
#define CONTENT_SHADERS L"Shaders"
#define CONTENT_TEXTURES L"Textures"


std::wstring getApplicationPath();
std::wstring getContentPath(std::wstring type = L"");
std::wstring getContentItemPathW(std::wstring type, std::wstring file);
std::wstring getContentItemPath(std::wstring type, std::string file);

std::string fromWString(std::wstring value);
std::wstring toWString(std::string value);

#endif //__CONTENT_H__