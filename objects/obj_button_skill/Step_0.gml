var camera = view_get_camera(0);
var has_skill_cooldown = undefined;

with (obj_player) { has_skill_cooldown = is_skill_on_cooldown(); }

if (current_hero != obj_player.current_hero) {
	current_hero = obj_player.current_hero;
	switch (obj_player.current_hero) {
		case HERO.LAWRENCE:
			unpressed_button_sprite = spr_btn_lawrence_skill;
			pressed_button_sprite = spr_pressed_btn_lawrence_skill;
			break;

		case HERO.JOE:
			unpressed_button_sprite = spr_btn_joe_skill;
			pressed_button_sprite = spr_pressed_btn_joe_skill;
			break;
		
		case HERO.JUCO:
			unpressed_button_sprite = spr_btn_juco_skill;
			pressed_button_sprite = spr_pressed_btn_juco_skill;
			break;
	}
	
	if (button_state == BUTTON_STATE.PRESSED) { sprite_index = pressed_button_sprite; }
	else { sprite_index = unpressed_button_sprite; }

}

x = camera_get_view_x(camera) + initial_x;
y = camera_get_view_y(camera) + initial_y;

if (has_skill_cooldown && button_state != BUTTON_STATE.PRESSED) {
	button_state = BUTTON_STATE.PRESSED;
	sprite_index = pressed_button_sprite;
	
} else if (!has_skill_cooldown && button_state != BUTTON_STATE.UNPRESSED) {
	button_state = BUTTON_STATE.UNPRESSED
	sprite_index = unpressed_button_sprite;
	
}
