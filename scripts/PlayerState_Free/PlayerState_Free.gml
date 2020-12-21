#region Animation
if(onground)
{
	sprite_index = (hspd != 0 ? spr_lawrence_idle : spr_lawrence_walking); 
}
else
{
	sprite_index = spr_lawrence_jumping;
}
if(hspd != 0) image_xscale = sign(hspd);
#endregion