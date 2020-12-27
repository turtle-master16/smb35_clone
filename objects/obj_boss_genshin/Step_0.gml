randomize();
switch(state){
	case BOSS_STATE.IDLE: 
		if(chance(0.05) && !alarm[1]) state = BOSS_STATE.SKILL; 
		sprite_index = idle_sprite;
		break;
	case BOSS_STATE.SKILL: 
		debris_drop();
		
		break;
}

