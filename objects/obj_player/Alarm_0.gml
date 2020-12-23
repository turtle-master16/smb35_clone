animation_state = ANIMATION_STATE.IDLE;
sprite_index = idle_sprite;

if (instance_exists(obj_lawrence_shield)) {
	var index = 0;
	var shield = instance_find(obj_lawrence_shield, INITIAL_INDEX);
	shield.visible = true;
}