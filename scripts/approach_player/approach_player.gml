	sprite_index = walking_sprite;
	
	var walk_duration = random_range(3, 5);
	walking = true;
	if(!alarm[1])alarm[1] = room_speed * walk_duration;
	if(!alarm[0])alarm[0] = room_speed * walk_duration;
	
	horizontal_speed = walking_speed * image_xscale;
	var horizontal_direction = sign(horizontal_speed);

	if (has_ground_collision(x + horizontal_speed, y)) {
		horizontal_speed *= -1;
		image_xscale *= -1;
		while(!has_ground_collision(x + horizontal_direction, y)) {
			x += horizontal_direction;
		}
	}
	x += horizontal_speed;