function scrDrawBloom() {
	gpu_set_blendmode(bm_add)
	with Effect
	{
		if bloom = 1
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*2,image_yscale*2,image_angle,c_white,0.2)	
	}
	with Bullet
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*2,image_yscale*2,image_angle,c_white,0.2)	
	}
	with Shell
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*2,image_yscale*2,image_angle,c_white,0.2)	
	}
	gpu_set_blendmode(bm_normal)


}
