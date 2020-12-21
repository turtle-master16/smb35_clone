/// @description Frame per Frame Actions
// Starting Variables
onground = place_meeting(x, y+1, obj_wood);

#region Player Inputs
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_skill = keyboard_check_pressed(ord("E"));
key_jump = keyboard_check_pressed(ord("W"));
#endregion

#region Movement And Input Reactions
Basic_Player_Movement();
if(key_jump && onground) vspd -= 50;
if(key_skill) state = PLAYERSTATE.SKILL;
#endregion

switch(state){
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.SKILL: PlayerState_Skill(); break;
}
