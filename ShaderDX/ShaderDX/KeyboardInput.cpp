#include "KeyboardInput.h"

using namespace dx9lib;

//////////////////////////////////////////
// Static Attributes
//////////////////////////////////////////

KeyboardInput* KeyboardInput::instance = new KeyboardInput();

//////////////////////////////////////////
// Static Methods
//////////////////////////////////////////
void KeyboardInput::update(Key key, bool pressed)
{
	getInstance()->updateKey(key, pressed);
}

bool KeyboardInput::isPressed(Key key)
{
	return instance->isKeyPressed(key);
}

KeyboardInput* KeyboardInput::getInstance()
{
	return instance;
}

void KeyboardInput::finalize()
{
	delete instance;
}


//////////////////////////////////////////
// Constructors
//////////////////////////////////////////
KeyboardInput::KeyboardInput()
{
	keys = new bool[KEY_COUNT];

	for (int i = 0; i < KEY_COUNT; i++)
	{
		keys[i] = false;
	}
}

KeyboardInput::~KeyboardInput()
{
	delete keys;
}

//////////////////////////////////////////
// Methods
//////////////////////////////////////////
bool KeyboardInput::isKeyPressed(Key key)
{
	if ( key < 0 || key >= KEY_COUNT) return false;

	return keys[normalize(key)];
}


void KeyboardInput::updateKey(Key key, bool pressed)
{
	if (key < 0 || key >= KEY_COUNT) return;

	keys[normalize(key)] = pressed;
}

Key KeyboardInput::normalize(Key key)
{
	if (key >= 'a' && key <= 'z')
	{
		Key diff = 'a' - 'A';
		return key - diff;
	}

	return key;
}
