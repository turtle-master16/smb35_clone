invincible = false;

horizontal_speed = 0;
vertical_speed = 0;

team = object_get_parent(object_index);
target_enemy = (team == obj_ally_mob ? obj_enemy_mob : obj_ally_mob);

hp = 2;

walking_speed = 20;
gravity_speed = 3;

state = MOB_STATE.PATROL;

spawning_sprite = noone;

hitbox = noone;
hitbox_sprite = noone;
