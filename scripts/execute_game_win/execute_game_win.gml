obj_game.is_game_win = true;

var bonus_points = int64(obj_game.alarm[0] / room_speed) * GAME_POINTS.EXTRA_TIME;
obj_game.player_score += bonus_points;
object_set_visible(obj_game, false);

switch (room) {
	case room_level_1D:
		obj_start.level_1_scores[4] = obj_start.level_1_scores[3];
		obj_start.level_1_scores[3] = obj_start.level_1_scores[2];
		obj_start.level_1_scores[2] = obj_start.level_1_scores[1];
		obj_start.level_1_scores[1] = obj_start.level_1_scores[0];
		obj_start.level_1_scores[0] = obj_game.player_score;
		
		array_copy(obj_game.scores_to_display, 0, obj_start.level_1_scores, 0, 5);
		break;
	
	case room_level_2D:
		obj_start.level_2_scores[4] = obj_start.level_2_scores[3];
		obj_start.level_2_scores[3] = obj_start.level_2_scores[2];
		obj_start.level_2_scores[2] = obj_start.level_2_scores[1];
		obj_start.level_2_scores[1] = obj_start.level_2_scores[0];
		obj_start.level_2_scores[0] = obj_game.player_score;
		
		array_copy(obj_game.scores_to_display, 0, obj_start.level_2_scores, 0, 5);
		break;
		
	case room_level_3D:
		obj_start.level_3_scores[4] = obj_start.level_3_scores[3];
		obj_start.level_3_scores[3] = obj_start.level_3_scores[2];
		obj_start.level_3_scores[2] = obj_start.level_3_scores[1];
		obj_start.level_3_scores[1] = obj_start.level_3_scores[0];
		obj_start.level_3_scores[0] = obj_game.player_score;
		
		array_copy(obj_game.scores_to_display, 0, obj_start.level_3_scores, 0, 5);
		break;
}

room_goto(room_game_win);

instance_destroy(obj_camera);
instance_destroy(obj_player);
