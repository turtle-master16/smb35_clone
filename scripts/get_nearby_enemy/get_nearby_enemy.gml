var collision_start = -20;
var collision_end = 20;

var nearby_enemy = collision_line(x+collision_start, y, x+collision_end, y, target_enemy, false, false);
return nearby_enemy;