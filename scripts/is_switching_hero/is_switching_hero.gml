var is_switch_pressed = keyboard_check_pressed(KEY_BINDINGS.SWITCH);

return is_switch_pressed && !is_switch_on_cooldown();