gpu_set_blendmode(bm_add)
draw_set_color(col)
draw_set_alpha(0.2)
for(var i = 0; i < 3; i++)
{
	draw_circle(x,y,size-(i*2)+sin(wave+i*variance),0)	
}
gpu_set_blendmode(bm_normal)
draw_set_color(c_white)
draw_set_alpha(1)