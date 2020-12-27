randomize();
event_inherited();

idle_sprite = spr_boss_genshin_idle;
walking_sprite = spr_boss_genshin_walk;
attacking_sprite = spr_boss_genshin_attack;
image_xscale = -1;

hitbox_sprite = spr_boss_genshin_attack_hitbox;
walked_distance = 0;

state = BOSS_STATE.SKILL;
skill_delay = 3;
skill_list = [debris_drop(), shoot_energy_wave()];

enum BOSS_STATE{
	IDLE,
	SKILL
}