var is_key_up_pressed = keyboard_check(KEY_BINDINGS.UP);
var is_colliding_in_elevator = has_elevator_collision(x, y);

return is_key_up_pressed && is_colliding_in_elevator;
