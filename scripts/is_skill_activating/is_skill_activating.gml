var is_skill_pressed = keyboard_check_pressed(KEY_BINDINGS.SKILL);

return is_skill_pressed && !is_skill_on_cooldown();
