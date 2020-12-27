if(!alarm[1]){
	sprite_index = spr_boss_genshin_attack;
	create_hitbox(x, y, id, spr_boss_genshin_attack_hitbox, 60, 1);
	alarm[1] = room_speed * skill_delay;
}
if(Animation_End()) state = BOSS_STATE.IDLE;