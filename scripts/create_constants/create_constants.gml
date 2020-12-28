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
	SKILL = ord("E"),
	ESCAPE = vk_escape
}

enum GAME_POINTS {
	COIN = 100,
	ENEMY_DEATH = 500,
	EXTRA_TIME = 120
}

enum ANIMATION_STATE {
	IDLE,
	WALK,
	JUMP,
	SKILL
}

enum BUTTON_STATE {
	PRESSED,
	UNPRESSED
}

enum HERO {
	LAWRENCE,
	JOE,
	JUCO
}

enum MOB_STATE {
	SPAWN,
	PATROL,
	ATTACK
}
