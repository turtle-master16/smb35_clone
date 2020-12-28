create_death_particles();
with(other){
	if(!alarm[4]) {
		alarm[4] = room_speed * 1;
		invincible = true;
		obj_game.hp--;
	}
}
instance_destroy();
