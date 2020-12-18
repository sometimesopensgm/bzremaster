scrDrawBloom()

with Wall
{
	draw_sprite(topspr,topindex,x,y-12)
	if hit > 0
	{
		gpu_set_fog(1,c_white,0,0)
		gpu_set_blendmode(bm_add)
		var _range = random_range(-1,1)
		var _offset = (_range*hit/4)
		draw_sprite_ext(sprite_index,image_index,x+_offset,y,image_xscale,image_yscale,image_angle,c_white,1)
		draw_sprite_ext(sprite_index,image_index,x+_offset,y-12,image_xscale,image_yscale,image_angle,c_white,1)
		gpu_set_blendmode(bm_normal)
		gpu_set_fog(0,c_white,0,0)
		hit -= 1
	}
}
with Grave
{
	draw_sprite(sprite_index,1,x,y-8)
}
with Border
{
	//draw_sprite_part(outspr,1,l,t,w,h,x-4+l,y-16+t)
	draw_sprite(topspr,topindex,x,y-12)
}
with Player
{
	if z < 0
	{
		event_perform(ev_draw,0)
	}
}
with parSolid
{
	if place_meeting(x,y,parSolid)
	{
		draw_text(CameraCont.camx,CameraCont.camy,"YOU FUCKED UP")
		draw_text(x,y,"HERE")
	}
}
draw_text(CameraCont.camx,CameraCont.camy,string(instance_number(Altar)))