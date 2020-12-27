if(!alarm[1]){
	create_hitbox(x, y, id, spr_boss_genshin_attack_hitbox, 60, 1);
	sprite_index = spr_boss_genshin_attack;
	alarm[1] = room_speed * 4;
}
if(Animation_End())state = BOSS_STATE.IDLE;