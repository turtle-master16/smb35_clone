// Set values for hspd and vspd
hspd = (key_right - key_left) * walkspeed;
vspd += grav;

// Horizontal Collision
if(place_meeting(x+hspd, y, obj_wood)){
	show_debug_message(string(key_left));
	while(!place_meeting(x+sign(hspd), y, obj_wood)) x += sign(hspd);
	hspd = 0;
}
x += hspd;

//Vertical Collision
if(place_meeting(x, y+vspd, obj_wood)){
	while(!place_meeting(x, y+sign(vspd), obj_wood)) y += sign(vspd);
	vspd = 0;
}
y += vspd;
