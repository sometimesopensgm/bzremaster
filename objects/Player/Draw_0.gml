var _gundist = 8;
var xx = x, yy = y;
var _gunoffrot = 0;
if parrying > 0
{
	_gunoffrot = 90*right	
}

if front = -1
{
	draw_sprite_ext(weapon_get_sprite(wep),0,xx+lengthdir_x(_gundist-wkick,handrot+wkick*4*right),yy+lengthdir_y(_gundist-wkick,handrot+wkick*4*right)+z,1,right,handrot+wkick*4*right+_gunoffrot,c_white,1)
}
draw_sprite_ext(sprite_index,image_index,xx,yy+z,right,image_yscale,image_angle,c_white,1)
if front = 1 or parrying > 0
{
	var _addrot = wkick*4*right
	if parrying > 0
	_addrot = 0
	if instance_exists(Parry)
		gpu_set_fog(true,c_white,0,0)
	draw_sprite_ext(weapon_get_sprite(wep),0,xx+lengthdir_x(_gundist-wkick,handrot+_addrot),yy+lengthdir_y(_gundist-wkick,handrot+_addrot)+z,1,right,handrot+_addrot+_gunoffrot,c_white,1)
	if instance_exists(Parry)
		gpu_set_fog(false,c_white,0,0)
}
