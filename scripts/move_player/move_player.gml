#region Horizontal Collision

var horizontal_direction = get_horizontal_direction();
horizontal_speed = walking_speed * horizontal_direction;

if (has_ground_collision(x + horizontal_speed, y)) {
	horizontal_speed = 0;
	while(!has_ground_collision(x + horizontal_direction, y)) {
		x += horizontal_direction;	
	}
}

x += horizontal_speed;

#endregion

#region Vertical Collision

if (is_jumping()) { vertical_speed += jumping_speed * sign(DIRECTION.UP); }
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
