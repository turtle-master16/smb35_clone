#region movement
vertical_speed += gravity_speed;

	var vertical_direction = sign(vertical_speed);
	if(has_ground_collision(x, y + vertical_speed)) {
		vertical_speed = 0;
		while(!has_ground_collision(x, y + vertical_direction)) {
			y += vertical_direction;
		}
	}
	y += vertical_speed;
	
#endregion

switch(state){
	case BOSS_STATE.IDLE: 
		sprite_index = idle_sprite;
		image_xscale = enemy_approach_side(obj_player);
		if(chance(0.03) && !alarm[1]) state = BOSS_STATE.SKILL; 
		break;
		
	case BOSS_STATE.SKILL: 
		if(!alarm[1]) skill_being_executed = irandom(3);
		switch(skill_being_executed){
			case 0: debris_drop(); break;
			case 1: shoot_energy_wave(); break;
			case 2: approach_player(); break;
			case 3: jump() break;
		}
		break;
}
if(invincible) hurt_sprite(); else image_alpha = 1;
