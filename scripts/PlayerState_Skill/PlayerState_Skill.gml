#region Main Logic
	// Skill Logic...
#endregion

#region Animation
	sprite_index = spr_lawrence_activate_skill;
	if(Animation_End()) state = PLAYERSTATE.FREE; // <-- Temporary
#endregion