if(!alarm[1]){ 
	sprite_index = spr_boss_genshin_debris_drop;
	var debris_height = obj_player.y - 1100;
	var debris = instance_create_depth(obj_player.x, debris_height, 0, obj_debris_attack);
	debris.image_angle = random_range(1, 359);
	alarm[1] = room_speed * skill_delay;
}
if(Animation_End()) state = BOSS_STATE.IDLE;