switch (room) {
	case room_level_selection:
		room_goto(room_main_menu);
		break;
		
	case room_level_1A:
	case room_level_1B:
	case room_level_1C:
	case room_level_1D:
	case room_level_1E:
	
	case room_level_2A:
	case room_level_2B:
	case room_level_2C:
	case room_level_2D:
	case room_level_2E:
	
	case room_level_3A:
	case room_level_3B:
	case room_level_3C:
	case room_level_3D:
	case room_level_3E:
		room_goto(room_main_menu);
		instance_destroy(obj_camera);
		instance_destroy(obj_player);
		instance_destroy(obj_game);
		break;
}