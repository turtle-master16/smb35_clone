if(!alarm[1]){
	sprite_index = jumping_sprite;
	alarm[1] = room_speed * 2; // Skill Cooldown
	alarm[0] = room_speed * 2; // Revert to Idle State
	vertical_speed -= 75;
}

disable_shake();

var on_air = !place_meeting(x, y+1, obj_ground_collision);

if(on_air){
	show_debug_message(image_index);
	if(image_index >= 5 && sprite_index == jumping_sprite){
		image_speed = 0.1;
		show_debug_message("Workde");
	}
}else{
	image_speed = 1;
	obj_camera.shakeForce = 5;
	obj_camera.shakeDur = 30;
	obj_camera.shake = true;
	
	obj_player.y -= 30;
}

horizontal_speed = walking_speed * image_xscale;
var horizontal_direction = sign(horizontal_speed);

if (has_ground_collision(x + horizontal_speed, y)) {
	horizontal_speed *= horizontal_direction;
	image_xscale *= -1;
	while(!place_meeting(x + horizontal_direction, y, obj_boundary_collision)) {
		x += horizontal_direction;
	}
}
x += horizontal_speed;