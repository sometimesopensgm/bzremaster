do
{
	//move
	x += lengthdir_x(16,dir)
	y += lengthdir_y(16,dir)
	//change dir and turn around out of bounds
	if x < leftbound or y < topbound or x > rightbound or y > bottombound
	{
		dir += 180
		x += lengthdir_x(16,dir)
		y += lengthdir_y(16,dir)
	}
	dir += choose(0,90,90,-90,-90,180)
	//make pits
	if !place_meeting(x,y,Pit)
	{
		make_solid(x,y,1)
		goal -= 1
	}
} until goal <= 0
//destroy myself after i reach my goal
instance_destroy()
