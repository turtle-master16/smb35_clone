var priority = 1;
var is_looping = true;

audio_stop_all();

switch (room) {
	case room_main_menu:
	case room_level_selection:
	case room_scoreboard:
		audio_play_sound(snd_menu, priority, is_looping);
		break;
		
	case room_game_win:
		is_looping = false;
		audio_play_sound(snd_game_win, priority, is_looping);
		break;
		
	case room_game_over:
		is_looping = false;
		audio_play_sound(snd_game_over, priority, is_looping);
		break;
		
	case room_level_1A:
	case room_level_1B:
	case room_level_1C:
	case room_level_1D:
	case room_level_1E:
		audio_play_sound(snd_level_1, priority, is_looping);
		break;
		
	case room_level_2A:
	case room_level_2B:
	case room_level_2C:
	case room_level_2D:
	case room_level_2E:
		audio_play_sound(snd_level_2, priority, is_looping);
		break;
		
	case room_level_3A:
	case room_level_3B:
	case room_level_3C:
	case room_level_3E:
		audio_play_sound(snd_level_3, priority, is_looping);
		break;
		
	case room_level_3D:
		audio_play_sound(snd_boss_fight, priority, is_looping);
		break;
}