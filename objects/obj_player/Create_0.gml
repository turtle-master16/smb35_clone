/// @description Player Setup

walkspeed = 25;
hspd = 0;
vspd = 0;
grav = 3;

// Default Booleans
onground = true;

// State Initialization
state = PLAYERSTATE.FREE;
enum PLAYERSTATE{
	FREE,
	SKILL
}

