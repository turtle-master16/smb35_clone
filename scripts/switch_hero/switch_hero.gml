switch(current_hero){
	case HERO.LAWRENCE: current_hero = HERO.JOE; break;
	case HERO.JOE: current_hero = HERO.LAWRENCE; break;
}

alarm[1] = room_speed * switch_cooldown;

update_hero();