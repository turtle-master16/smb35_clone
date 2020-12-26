var is_left_mouse_pressed = mouse_check_button_pressed(mb_left);

var is_key_switch_pressed = keyboard_check_pressed(KEY_BINDINGS.SWITCH);
var is_button_switch_pressed = is_left_mouse_pressed && position_meeting(mouse_x, mouse_y, obj_button_switch);

return (is_key_switch_pressed || is_button_switch_pressed) && !is_switch_on_cooldown();
