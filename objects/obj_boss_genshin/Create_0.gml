randomize();
event_inherited();

walking_speed = 23;
hp = 20;

idle_sprite = spr_boss_genshin_idle;
walking_sprite = spr_boss_genshin_walk;
attacking_sprite = spr_boss_genshin_attack;
jumping_sprite = spr_boss_genshin_jump;

hitbox_sprite = spr_boss_genshin_attack_hitbox;

invincible = false;
skill_being_executed = 0;

state = BOSS_STATE.IDLE;
