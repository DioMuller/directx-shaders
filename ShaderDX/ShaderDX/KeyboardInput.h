#pragma once
#include <memory>

#define KEY_COUNT 256

namespace dx9lib
{
	typedef char Key;

	enum Keys
	{
		ESC = 0x1b,
		LEFT = 0x25,
		UP = 0x26,
		RIGHT = 0x27,
		DOWN = 0x28,
		SPACEBAR = 32,
		A = 'A',
		B = 'B',
		C = 'C',
		D = 'D',
		E = 'E',
		F = 'F',
		G = 'G',
		H = 'H',
		I = 'I',
		J = 'J',
		K = 'K',
		L = 'L',
		M = 'M',
		N = 'N',
		O = 'O',
		P = 'P',
		Q = 'Q',
		R = 'R',
		S = 'S',
		T = 'T',
		U = 'U',
		V = 'V',
		W = 'W',
		X = 'X',
		Y = 'Y',
		Z = 'Z',
		NUM0 = '0',
		NUM1 = '1',
		NUM2 = '2',
		NUM3 = '3',
		NUM4 = '4',
		NUM5 = '5',
		NUM6 = '6',
		NUM7 = '7',
		NUM8 = '8',
		NUM9 = '9',
	};

	class KeyboardInput
	{
		//////////////////////////////////////////
		// Static Attributes
		//////////////////////////////////////////
		private:
			static KeyboardInput* instance;

		//////////////////////////////////////////
		// Static Methods
		//////////////////////////////////////////
		public:
			static bool isPressed(Key key);
			static void update(Key key, bool pressed);
			static void finalize();
		private:
			static KeyboardInput* getInstance();

		//////////////////////////////////////////
		// Attributes
		//////////////////////////////////////////
		private:
			bool* keys;

		//////////////////////////////////////////
		// Constructors
		//////////////////////////////////////////
		private:
			KeyboardInput();
		public:
			~KeyboardInput();

		//////////////////////////////////////////
		// Methods
		//////////////////////////////////////////				
		private:
			bool isKeyPressed(Key key);
			void updateKey(Key key, bool pressed);
			Key normalize(Key key);
	};
}