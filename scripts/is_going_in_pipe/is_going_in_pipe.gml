var is_left_mouse_pressed = mouse_check_button(mb_left);

var is_key_down_pressed = keyboard_check(KEY_BINDINGS.DOWN);
var is_button_down_pressed = is_left_mouse_pressed && position_meeting(mouse_x, mouse_y, obj_button_down);

var is_player_above_pipe = has_pipe_warp_collision(x, y + sign(DIRECTION.DOWN)) && !has_pipe_warp_collision(x, y);

return (is_key_down_pressed || is_button_down_pressed) && is_player_above_pipe;
