randomize();
event_inherited();

hp = 3;

idle_sprite = spr_boss_genshin_idle;
walking_sprite = spr_boss_genshin_walk;
attacking_sprite = spr_boss_genshin_attack;
image_xscale = -1;

hitbox_sprite = spr_boss_genshin_attack_hitbox;
walked_distance = 0;

state = BOSS_STATE.IDLE;
skill_delay = 4;
skill_on_cooldown = false;

enum BOSS_STATE{
	IDLE,
	SKILL
}