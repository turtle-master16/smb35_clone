var is_left_mouse_pressed = mouse_check_button(mb_left);

var is_key_left_pressed = keyboard_check(KEY_BINDINGS.LEFT);
var is_button_left_pressed = is_left_mouse_pressed && position_meeting(mouse_x, mouse_y, obj_button_left);
if (is_key_left_pressed || is_button_left_pressed) { return sign(DIRECTION.LEFT); }

var is_key_right_pressed = keyboard_check(KEY_BINDINGS.RIGHT);
var is_button_right_pressed = is_left_mouse_pressed && position_meeting(mouse_x, mouse_y, obj_button_right);
if (is_key_right_pressed || is_button_right_pressed) { return sign(DIRECTION.RIGHT); }

return DIRECTION.NONE;
