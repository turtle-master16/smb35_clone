/// @description create_hitbox(x, y, onwer, sprite, lifespan, damage)
/// @param x
/// @param y
/// @param owner
/// @param sprite
/// @param lifespan
/// @param damage
var x_postition = argument0;
var y_postition = argument1;
var owner = argument2;
var sprite = argument3;
var lifespan = argument4;
var damage = argument5;

var xscale = owner.image_xscale;

var hitbox = instance_create_depth(x_postition, y_postition, 0, obj_hitbox);
hitbox.image_alpha = 0.1;
hitbox.image_xscale = xscale;
hitbox.sprite_index = sprite;
hitbox.owner = owner;
hitbox.alarm[0] = lifespan;
hitbox.damage = damage;