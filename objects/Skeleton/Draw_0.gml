var _range = random_range(-1,1)
draw_sprite_ext(sprite_index,image_index,x+(_range*hit/4),y,image_xscale*right+(spaz*0.1)*right,image_yscale+spaz*0.1,image_angle,c_white,1)
if hit > 0
{
	gpu_set_fog(1,c_white,0,0)
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(sprite_index,image_index,x+(_range*hit/4),y,image_xscale*right+(spaz*0.1)*right,image_yscale+spaz*0.1,image_angle,c_white,0.8)
	gpu_set_blendmode(bm_normal)
	gpu_set_fog(0,c_white,0,0)
}