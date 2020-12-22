var is_key_up_pressed = keyboard_check_pressed(KEY_BINDINGS.UP);
var is_standing_on_ground = has_ground_collision(x, y + sign(DIRECTION.DOWN));

return is_key_up_pressed && is_standing_on_ground;
