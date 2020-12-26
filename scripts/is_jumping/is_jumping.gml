var is_left_mouse_pressed = mouse_check_button_pressed(mb_left);

var is_key_up_pressed = keyboard_check_pressed(KEY_BINDINGS.UP);
var is_button_up_pressed = is_left_mouse_pressed && position_meeting(mouse_x, mouse_y, obj_button_up);

var is_standing_on_ground = has_ground_collision(x, y + sign(DIRECTION.DOWN));
var is_standing_on_pipes = has_pipe_collision(x, y + sign(DIRECTION.DOWN)) && !has_pipe_collision(x, y);

return (is_key_up_pressed || is_button_up_pressed) && (is_standing_on_ground || is_standing_on_pipes);
