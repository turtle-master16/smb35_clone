if(!instance_exists(target)) return;

var camera_view = view_camera[0];

var camera_min_x = -800;
var camera_max_x = 10240;

var camera_x = target.x + camera_min_x;
var camera_y = 0;

if (camera_max_x > target.x) {
	#region Screenshake
	if(shake){
    shakeDur --;
    camera_x += choose(-shakeForce,shakeForce);
    camera_y += choose(-shakeForce,shakeForce);
	    if(shakeDur <= 0){
	        shake = false;
	        shakeDur = 5;
	    }
	}else{
	    camera_x = approach(camera_x,0,0.3);
	    camera_y = approach(camera_y,0,0.3);
	}
	#endregion
	
	camera_set_view_pos(camera_view, camera_x, camera_y);
}

