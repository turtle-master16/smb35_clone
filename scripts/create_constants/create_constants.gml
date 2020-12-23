#macro INITIAL_INDEX 0

enum DIRECTION {
	NONE = 0,
	UP = -1,
	DOWN = 1,
	LEFT = -2,
	RIGHT = 2,
}

enum KEY_BINDINGS {
	UP = ord("W"),
	LEFT = ord("A"),
	DOWN = ord("S"),
	RIGHT = ord("D"),
	SWITCH = ord("Q"),
	SKILL = ord("E")
}

enum ANIMATION_STATE {
	IDLE,
	WALK,
	JUMP,
	SKILL
}

enum HERO {
	LAWRENCE,
	JOE
}
