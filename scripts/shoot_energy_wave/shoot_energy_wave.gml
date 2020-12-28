if(!alarm[1]){
	sprite_index = spr_boss_genshin_attack;
	image_index = 0;
	create_hitbox(x, y, id, spr_boss_genshin_attack_hitbox, 60, 1);
	alarm[1] = room_speed * skill_delay;
}
if(sprite_index == spr_boss_genshin_attack && Animation_End()) {
	show_debug_message(image_index);
	state = BOSS_STATE.IDLE;
}