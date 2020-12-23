var is_standing_on_ground = has_ground_collision(x, y + DIRECTION.DOWN);
var is_walking = horizontal_speed != 0;

if (animation_state == ANIMATION_STATE.SKILL) { return; }

if (is_switching_hero()) {
	switch_hero(); 

} else if (is_skill_activating()) {
	animation_state = ANIMATION_STATE.SKILL;
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

if (is_walking) { image_xscale = sign(horizontal_speed); }
