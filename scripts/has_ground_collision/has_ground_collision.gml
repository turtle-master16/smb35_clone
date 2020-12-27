var obj_x = argument[0];
var obj_y = argument[1];

var is_colliding_on_ground = place_meeting(obj_x, obj_y, obj_ground_collision);
var is_colliding_on_boundary = place_meeting(obj_x, obj_y, obj_boundary_collision);

return is_colliding_on_ground || is_colliding_on_boundary;
