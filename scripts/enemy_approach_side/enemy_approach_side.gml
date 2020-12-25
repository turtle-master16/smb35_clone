/// description enemy_approach_side(intstance)
/// @param {id} instance to check

/// Return the direction from where the instance is approaching

var _instance = argument0;
var _approaching_side = (x < _instance ? sign(DIRECTION.RIGHT) : sign(DIRECTION.LEFT));

return _approaching_side;
