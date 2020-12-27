create_death_particles();
with(other){
	hp--;
	show_debug_message(hp);
	if(hp<=0){
		// Game Over Logic;
	}
}
instance_destroy();