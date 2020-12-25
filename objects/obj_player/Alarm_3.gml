/// @description Create Skeleton on nearest block
var nearest_ground = instance_nearest(x, y, obj_ground_collision);
var spawning_location_x =  nearest_ground.x;
var spawning_location_y = nearest_ground.y + DIRECTION.UP;
instance_create_layer(spawning_location_x, spawning_location_y, "Mobs", obj_skeleton);
