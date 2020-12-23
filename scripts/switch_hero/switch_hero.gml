switch(current_hero){
	case HERO.LAWRENCE: current_hero = HERO.JOE; break;
	case HERO.JOE: current_hero = HERO.JUCO; break;
	case HERO.JUCO: current_hero = HERO.LAWRENCE; break;
}

update_hero();
start_switch_cooldown();

sprite_index = idle_sprite;