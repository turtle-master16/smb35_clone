horizontal_speed = 0;
vertical_speed = 0;

walking_speed = 28;
jumping_speed = 75;
climbing_speed = 25;
gravity_speed = 3;

invincible = false;

skill_duration = 7;

switch_cooldown = 3;
skill_cooldown =  5;

team = obj_ally_mob;
current_hero = HERO.LAWRENCE;
animation_state = ANIMATION_STATE.IDLE;

idle_sprite = spr_lawrence_idle;
walking_sprite = spr_lawrence_walk;
jumping_sprite = spr_lawrence_jump;
skill_sprite = spr_lawrence_activate_skill;
