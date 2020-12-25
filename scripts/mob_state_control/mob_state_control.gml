switch(state){
	case MOB_STATE.SPAWN:
		if(spawning_done()){
			sprite_index = walking_sprite;
			invincible = false;
			state = MOB_STATE.PATROL;
		}
		break;
		
	case MOB_STATE.PATROL:
		sprite_index = walking_sprite;
		move_mob();
		break;
		
	case MOB_STATE.ATTACK: 
		sprite_index = attacking_sprite;
		create_hitbox(x, y, id, hitbox_sprite, 20, 2); 
		break;
}