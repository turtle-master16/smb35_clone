/// @description Escape

switch (room) {
	case room_game_win:
		room_goto(room_scoreboard);
		break;
		
	case room_game_over:
		room_goto(room_main_menu);
		break;
		
	case room_scoreboard:
		room_goto(room_main_menu);
		instance_destroy(obj_game);
		break;
}