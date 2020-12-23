switch (current_hero) {
	case HERO.LAWRENCE:
		idle_sprite = spr_lawrence_idle;
		walking_sprite = spr_lawrence_walk;
		jumping_sprite = spr_lawrence_jump;
		skill_sprite = spr_lawrence_activate_skill;
		break;
		
	case HERO.JOE:
		idle_sprite = spr_joe_idle;
		walking_sprite = spr_joe_walk;
		jumping_sprite = spr_joe_jump;
		skill_sprite = spr_joe_activate_skill;
		break;
	case HERO.JUCO:
		idle_sprite = spr_juco_idle;
		walking_sprite = spr_juco_walk;
		jumping_sprite = spr_juco_jump;
		skill_sprite = spr_juco_activate_skill;
		break;
}
