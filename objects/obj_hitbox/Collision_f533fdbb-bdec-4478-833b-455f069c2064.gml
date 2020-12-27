var player = other;
if(!is_owner_dead()){
	var is_ally = (owner.team == player.team);
	var is_own_collision = (owner == other);
	
	if(owner == noone || is_own_collision || is_ally) return;
	with(player){
		if(!invincible){
			var hitbox = other;
			var invincibility_duration = 1;
			
			hp -= hitbox.damage;
			invincible = true;
			alarm[4] = room_speed * invincibility_duration;
			show_debug_message(hp)
			if(hp <= 0){ }// game over 
		}
	}
}
else {
	instance_destroy();
}