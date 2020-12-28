#region Horizontal Collisio

	horizontal_speed = walking_speed * image_xscale;
	var horizontal_direction = sign(horizontal_speed);

	if (has_ground_collision(x + horizontal_speed, y)) {
		horizontal_speed *= -1;
		image_xscale *= -1;
		while(!has_ground_collision(x + horizontal_direction, y)) {
			x += horizontal_direction;	
		}
	}
	if (place_meeting(x+horizontal_speed, y, obj_invisible_wall)) {
		horizontal_speed *= -1;
		image_xscale *= -1;
		while(!place_meeting(x+horizontal_speed, y, obj_invisible_wall)) {
			x += horizontal_direction;	
		}
	}
	
	x += horizontal_speed;

	#endregion

	#region Vertical Collision

	vertical_speed += gravity_speed;

	var vertical_direction = sign(vertical_speed);
	if(has_ground_collision(x, y + vertical_speed)) {
		vertical_speed = 0;
		while(!has_ground_collision(x, y + vertical_direction)) {
			y += vertical_direction;
		}
	}

	y += vertical_speed;

	#endregion