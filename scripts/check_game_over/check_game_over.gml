if(obj_game.hp <= 0){
	instance_destroy(obj_player);
	room_goto(room_game_over);
}