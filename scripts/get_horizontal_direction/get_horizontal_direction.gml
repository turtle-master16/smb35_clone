var is_key_left_pressed = keyboard_check(KEY_BINDINGS.LEFT);
if (is_key_left_pressed) { return sign(DIRECTION.LEFT); }

var is_key_right_pressed = keyboard_check(KEY_BINDINGS.RIGHT);
if (is_key_right_pressed) { return sign(DIRECTION.RIGHT); }

return DIRECTION.NONE;
