/// create skeleton()

var player = id;
var spawn_orientation = player.image_xscale;

var nearest_ground = instance_nearest(x, y, obj_ground_collision);
var spawning_location_x =  nearest_ground.x;
var spawning_location_y = nearest_ground.y + DIRECTION.UP;

var skeleton = instance_create_layer(spawning_location_x, spawning_location_y, "Other_Instances", obj_skeleton)
with(skeleton){
	image_xscale = spawn_orientation;
}

