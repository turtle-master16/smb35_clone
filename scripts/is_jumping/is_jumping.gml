var is_key_up_pressed = keyboard_check_pressed(KEY_BINDINGS.UP);
var is_standing_on_ground = has_ground_collision(x, y + sign(DIRECTION.DOWN));
var is_standing_on_pipes = has_pipe_collision(x, y + sign(DIRECTION.DOWN)) && !has_pipe_collision(x, y);

return is_key_up_pressed && (is_standing_on_ground || is_standing_on_pipes);
