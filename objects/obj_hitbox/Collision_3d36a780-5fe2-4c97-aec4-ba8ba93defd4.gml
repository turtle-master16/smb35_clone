/// @description Put Mob in hit state
if(is_owner_dead()){
	var mob = other;
	var is_ally = (owner.team == mob.team);
	var is_own_collision = (owner == other);
	
	if(owner == noone || is_own_collision || is_ally) return;
	
	with(mob){
		if(!invincible){
			var hitbox = other;
			var invincibility_duration = 1;
			
			hp -= hitbox.damage;
			show_debug_message(string(hp));
			invincible = true;
			alarm[2] = room_speed * invincibility_duration;
			
			if(hp <= 0) instance_destroy();
		}
	}
}
else {
	instance_destroy();
}