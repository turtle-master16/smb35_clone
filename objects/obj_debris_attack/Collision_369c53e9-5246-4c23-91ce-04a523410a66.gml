create_death_particles();
with(other){
	hp--;
	if(hp<=0) // Game Over Logic;
	show_debug_message(hp);
}
instance_destroy();