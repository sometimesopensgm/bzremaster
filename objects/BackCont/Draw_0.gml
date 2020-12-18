/*with Border
draw_sprite(outspr,0,x,y)*/
with Player
{
	var _shdoffset = 10
	draw_sprite_ext(shdPlayer,0,x,y+_shdoffset,right,1,0,c_white,0.4)
}
with Skeleton
{
	var _shdoffset = 14
	draw_sprite_ext(shdPlayer,0,x,y+_shdoffset,right,1,0,c_white,0.4)
}