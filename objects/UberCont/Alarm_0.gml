///@description Finalize stage
with Pit
{
	if place_meeting(x,y-16,Floor) or place_meeting(x,y-16,Border) or place_meeting(x,y-16,Grave) or place_meeting(x,y-16,Wall)
	{
		visible = 1	
	}
}
with TileCont
{
	for(var _l = 0; _l < 960; _l += 16)
	{
		for(var _w = 0; _w < 720; _w += 16)
		{
			var _floortouching = instance_place(_l,_w,Floor)
			var _towrite = 0;
			if _floortouching > 0
			{
				if _floortouching.sprite_index = sprFloor1
				_towrite = 1+_floortouching.image_index
				if _floortouching.sprite_index = sprFloor1B
				_towrite = 5+_floortouching.image_index
			}
			ds_grid_set(tiles,_l/16,_w/16,_towrite)
		}
	}
}
with Border
{
	if place_meeting(x-16,y,Border)
	l = 4
	if place_meeting(x,y-16,Border)
	t = 4
	if place_meeting(x+16,y,Border)
	w = 20-l
	if place_meeting(x,y+16,Border)
	{
		h = 20-t
		visible = 0
	}
}
with Wall
{
	makefloor = 1	
}
with Floor
if place_meeting(x,y,parSolid) or place_meeting(x,y,Wall)
instance_destroy()

make_solid(320,0,solid_bonezone)
//make sure nothing touches the bone zone
with parSolid
{
	if place_meeting(x,y,BoneZone)
	instance_destroy()
}
with Wall
{
	if place_meeting(x,y,BoneZone)
	instance_destroy()
}