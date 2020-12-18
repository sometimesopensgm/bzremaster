///@description Make the floor and spawn pits under walls
//I AM SHNASTY
for(var w = 0; w < 960; w += 16)
{
	for(var h = 0; h < 720; h += 16)
	{
		if !position_meeting(w,h,Border)
		make_floor(w,h,0)
	}
}
//fill_solid(0,480,20,15,solid_pit,1.3)
with Border
{
	if !place_meeting(x,y+16,Floor) and !place_meeting(x,y+16,parSolid)
	{
		instance_create(x,y+16,Pit)	
	}
}