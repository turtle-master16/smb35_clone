if (is_initializing) {
	alarm[0] = room_speed * 1;
	alarm[1] = room_speed * (shield_duration - 1);
	alarm[2] = room_speed * shield_duration;
	
	is_initializing = false;
}

if (player_object != undefined) {
	x = player_object.x;
	y = player_object.y;	
}