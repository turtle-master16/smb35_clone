var game_time = 0;

switch (room) {
	case room_level_1A: game_time = 300; break;
	case room_level_2A: game_time = 600; break;
	case room_level_3A: game_time = 900; break;
}

alarm[0] = room_speed * game_time;