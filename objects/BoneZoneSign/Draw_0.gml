gpu_set_blendmode(bm_add)
for(var i = 0; i < 360; i += 45)
{
	draw_sprite_ext(sprite_index,image_index,x+lengthdir_x(3+sin(wave)/2,i+(wave*20)),y+lengthdir_y(3+sin(wave)/2,i+(wave*20)),1+sin(wave)/24,1+sin(wave)/24,0,c_white,0.2)	
}