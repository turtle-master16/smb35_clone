var camera = view_get_camera(0);
var has_switch_cooldown = undefined;

with (obj_player) { has_switch_cooldown = is_switch_on_cooldown(); }

x = camera_get_view_x(camera) + initial_x;
y = camera_get_view_y(camera) + initial_y;

if (has_switch_cooldown && button_state != BUTTON_STATE.PRESSED) {
	button_state = BUTTON_STATE.PRESSED;
	sprite_index = pressed_button_sprite
	
} else if (!has_switch_cooldown && button_state != BUTTON_STATE.UNPRESSED) {
	button_state = BUTTON_STATE.UNPRESSED
	sprite_index = unpressed_button_sprite;
	
}
