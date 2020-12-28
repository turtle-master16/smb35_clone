event_inherited();

owner = obj_player;
lifespan = 10;

hp = 20;

state = MOB_STATE.SPAWN;
invincible = true;

spawning_sprite = spr_juco_spawn_skeleton;
walking_sprite = spr_juco_skeleton_walk;
attacking_sprite = spr_juco_skeleton_attack;

hitbox_sprite = spr_juco_skeleton_attack_hitbox;

start_skeleton_lifespan();