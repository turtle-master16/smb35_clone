event_inherited();

idle_sprite = spr_boss_genshin_idle;
walking_sprite = spr_boss_genshin_walk;
attacking_sprite = spr_boss_genshin_attack;

hitbox_sprite = spr_boss_genshin_attack_hitbox;

state = BOSS_STATE.SKILL;
skill_delay = 3;

enum BOSS_STATE{
	IDLE,
	SKILL
}