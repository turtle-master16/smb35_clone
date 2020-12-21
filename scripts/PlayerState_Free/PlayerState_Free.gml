#region Animation
if(onground)
{
	sprite_index = (hspd != 0 ? spr_lawrence_walk : spr_lawrence_idle); 
}
else
{
	sprite_index = spr_lawrence_jump;
}
if(hspd != 0) image_xscale = sign(hspd);
#endregion