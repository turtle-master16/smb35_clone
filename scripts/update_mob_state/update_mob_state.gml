var nearby_enemy = instance_nearest(x, y, target_enemy);
if(state != MOB_STATE.SPAWN){
	if(nearby_enemy) {

		var enemy_direction = enemy_approach_side(nearby_enemy);

		if(enemy_in_range(nearby_enemy) && has_ground_collision(x, y+sign(DIRECTION.DOWN))){
			image_xscale = enemy_direction;
			state = MOB_STATE.ATTACK;
		}
		else{
			state = MOB_STATE.PATROL;
		}
	}else{
		state = MOB_STATE.PATROL;
	}
}