if(!alarm[1]){
	sprite_index = spr_boss_genshin_attack;
	image_index = 0;
	create_hitbox(x, y, id, spr_boss_genshin_attack_hitbox, 60, 1);
	alarm[1] = room_speed * 2;
}
if(sprite_index == spr_boss_genshin_attack && Animation_End()) {
	state = BOSS_STATE.IDLE;
}