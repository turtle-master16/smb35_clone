switch(state){
	case BOSS_STATE.IDLE: 
		sprite_index = idle_sprite;
		
		if(chance(0.05) && !alarm[1]) state = BOSS_STATE.SKILL; 
		break;
		
	case BOSS_STATE.SKILL: 
		var skill_to_execute = irandom(1);
		switch(skill_to_execute){
			case 0: debris_drop(); break;
			case 1: shoot_energy_wave(); break;
		}
		break;
}

