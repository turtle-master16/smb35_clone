/// @description enemy_in_range(enemy)
/// @param  Enemy to check

var nearby_enemy = argument0;
var attack_range = 50;

if (instance_exists(nearby_enemy)) {
	
	var enemy_inside_range = distance_to_object(nearby_enemy) <= attack_range;
	
	return enemy_inside_range;
}