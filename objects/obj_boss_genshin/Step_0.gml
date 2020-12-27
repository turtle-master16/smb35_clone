switch(state){
	case BOSS_STATE.IDLE: 
		if(chance(0.05) && !alarm[1]) state = BOSS_STATE.SKILL; 
		sprite_index = idle_sprite;
		break;
	case BOSS_STATE.SKILL: 
		var script_to_execute = irandom(1);
		switch(script_to_execute){
			case 0: debris_drop(); break;
			case 1: shoot_energy_wave(); break;
		}
		break;
}

