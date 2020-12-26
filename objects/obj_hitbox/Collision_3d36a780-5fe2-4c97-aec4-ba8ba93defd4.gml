/// @description Damage Enemy
var mob = other;
if(!is_owner_dead()){
	var is_ally = (owner.team == mob.team);
	var is_own_collision = (owner == other);
	
	if(owner == noone || is_own_collision || is_ally) return;
	with(mob){
		if(!invincible){
			var hitbox = other;
			var invincibility_duration = 1;
			
			hp -= hitbox.damage;
			invincible = true;
			alarm[2] = room_speed * invincibility_duration;
			//show_debug_message(hp);
			if(hp <= 0) instance_destroy();
		}
	}
}
else {
	instance_destroy();
}