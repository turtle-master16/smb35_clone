var is_left_mouse_pressed = mouse_check_button_pressed(mb_left);

var is_key_skill_pressed = keyboard_check_pressed(KEY_BINDINGS.SKILL);
var is_button_skill_pressed = is_left_mouse_pressed && position_meeting(mouse_x, mouse_y, obj_button_skill);

return (is_key_skill_pressed || is_button_skill_pressed) && !is_skill_on_cooldown();
