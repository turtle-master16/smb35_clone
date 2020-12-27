var is_player_going_in_pipe = false;
with (obj_player) { is_player_going_in_pipe = is_going_in_pipe(); }

if (is_player_going_in_pipe) {
	room_goto(next_room);
	obj_player.x = player_starting_x;
	obj_player.y = player_starting_y;	
}
