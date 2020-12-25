/// @description enemy_in_range(enemy)
/// @param  Enemy to check

var nearby_enemy = argument0;
var attack_range = 50;
if (instance_exists(nearby_enemy)) {
	var enemy_direction = (x > nearby_enemy.x ? sign(DIRECTION.LEFT): sign(DIRECTION.RIGHT));
	var enemy_inside_range = distance_to_object(nearby_enemy) <= attack_range;
	
	if(enemy_inside_range){
		return true;
	}
	return false;
}