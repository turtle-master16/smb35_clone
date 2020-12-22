switch (current_hero) {
	case HERO.LAWRENCE:
		var shield = instance_create_layer(x, y, "Skill_Effects", obj_lawrence_shield);
		with (shield) {
			is_initializing = true;
			player_object = other;
			shield_duration = other.skill_duration;
		}
		break;
		
	case HERO.JOE:
		break;
}