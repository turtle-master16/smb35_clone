var is_standing_on_ground = has_ground_collision(x, y + DIRECTION.DOWN);
var is_walking = horizontal_speed != 0;

if (alarm[0]) { return; }

if (animation_state != ANIMATION_STATE.SKILL && is_skill_activating()) {
	sprite_index = skill_sprite;
	animation_state = ANIMATION_STATE.SKILL;
	alarm[0] = room_speed * 1;
	activate_skill();

} else if (animation_state != ANIMATION_STATE.JUMP && !is_standing_on_ground) {
	sprite_index = jumping_sprite;
	animation_state = ANIMATION_STATE.JUMP;

} else if (animation_state != ANIMATION_STATE.IDLE && is_standing_on_ground && !is_walking) {
	sprite_index = idle_sprite; 
	animation_state = ANIMATION_STATE.IDLE;

} else if (animation_state != ANIMATION_STATE.WALK && is_standing_on_ground && is_walking) {
	sprite_index = walking_sprite;
	animation_state = ANIMATION_STATE.WALK;

}

if(horizontal_speed != 0) { image_xscale = sign(horizontal_speed); }
