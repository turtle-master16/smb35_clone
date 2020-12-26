var is_left_mouse_pressed = mouse_check_button(mb_left);

var is_key_up_pressed = keyboard_check(KEY_BINDINGS.UP);
var is_button_up_pressed = is_left_mouse_pressed && position_meeting(mouse_x, mouse_y, obj_button_up);

var is_colliding_in_elevator = has_elevator_collision(x, y);

return (is_key_up_pressed || is_button_up_pressed) && is_colliding_in_elevator;
