var camera_view = view_camera[0];

var camera_min_x = -800;
var camera_max_x = 10240;

var camera_x = target.x + camera_min_x;
var camera_y = 0;

if (camera_max_x > target.x) {
	camera_set_view_pos(camera_view, camera_x, camera_y);
}