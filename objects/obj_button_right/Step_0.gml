var camera = view_get_camera(0);
var is_key_pressed = keyboard_check(KEY_BINDINGS.RIGHT);
var is_mouse_pressed = mouse_check_button(mb_left) && position_meeting(mouse_x, mouse_y, id);
var is_pressed = is_key_pressed || is_mouse_pressed;

x = camera_get_view_x(camera) + initial_x;
y = camera_get_view_y(camera) + initial_y;

if (is_pressed && button_state != BUTTON_STATE.PRESSED) {
	button_state = BUTTON_STATE.PRESSED;
	sprite_index = pressed_button_sprite
	
} else if (!is_pressed && button_state != BUTTON_STATE.UNPRESSED) {
	button_state = BUTTON_STATE.UNPRESSED
	sprite_index = unpressed_button_sprite;
	
}
