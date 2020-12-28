var skill_pose_delay = 0;
switch (current_hero) {
	case HERO.LAWRENCE:
		var shield = instance_create_layer(x, y, "Skill_Effects", obj_lawrence_shield);
		var shield_duration = 7;
		skill_pose_delay = 1;
		
		invincible = true;
		alarm[4] = room_speed * shield_duration;
		
		with (shield) {
			is_initializing = true;
			player_object = other;
			shield_duration = other.skill_duration;
		}
		break;
		
	case HERO.JOE:
		var is_standing_on_ground = has_ground_collision(x, y + sign(DIRECTION.DOWN));
		skill_pose_delay = 1.8;
		vertical_speed = 0;
		
		while (!is_standing_on_ground) {
			y += sign(DIRECTION.DOWN);
			is_standing_on_ground = has_ground_collision(x, y + sign(DIRECTION.DOWN));
		}
		
		create_hitbox(x, y, id, spr_joe_earthquake_hitbox, 60, 2);
		
		if (instance_exists(obj_lawrence_shield)) {
			var shield = instance_find(obj_lawrence_shield, INITIAL_INDEX);
			shield.visible = false;
		}
		break;
		
	case HERO.JUCO:
		skill_pose_delay = 1.9;
		alarm[3] = room_speed * skill_pose_delay;
		break;
}

start_skill_cooldown();
sprite_index = skill_sprite;
alarm[0] = room_speed * skill_pose_delay;