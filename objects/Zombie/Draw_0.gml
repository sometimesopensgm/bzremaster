var _range = random_range(-1,1)
var _gundist = 0
if front = -1
{
	draw_sprite_ext(spr_gun,0,x+lengthdir_x(_gundist-wkick,handrot+wkick*4*right),y+lengthdir_y(_gundist-wkick,handrot+wkick*4*right),1,right,handrot+wkick*4*right,c_white,1)
}
draw_sprite_ext(sprite_index,image_index,x,y,right,image_yscale,image_angle,c_white,1)
if front = 1
{
	draw_sprite_ext(spr_gun,0,x+lengthdir_x(_gundist-wkick,handrot+wkick*4*right),y+lengthdir_y(_gundist-wkick,handrot+wkick*4*right),1,right,handrot+wkick*4*right,c_white,1)
}
if hit > 0
{
	gpu_set_fog(1,c_white,0,0)
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(sprite_index,image_index,x+(_range*hit/4),y,image_xscale*right+(spaz*0.1)*right,image_yscale+spaz*0.1,image_angle,c_white,0.8)
	gpu_set_blendmode(bm_normal)
	gpu_set_fog(0,c_white,0,0)
}