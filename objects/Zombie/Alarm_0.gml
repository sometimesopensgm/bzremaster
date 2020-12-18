scrTarget(Player)
if aggro = 1
{
	walkdir = point_direction(x,y,target.x,target.y)+random_range(-40,40)
	
	if point_distance(x,y,target.x,target.y) <= 72 and gun = 0
		walkdir += 180+random_range(20,-20)
	
	if irandom(2) = 0 and gun = 0
	{
		alarm[1] = 19
		with effect_create(sprTelegraph,x,y-16,0,other,19,c_white)
		{
			additive = 0	
		}
	}
	if irandom(3) = 0 and gun = 1 and point_distance(x,y,target.x,target.y) < 96
	{
		alarm[1] = 19
		with effect_create(sprTelegraph,x,y-16,0,other,19,c_white)
		{
			additive = 0	
		}
	}
}
else
{
	walkdir = irandom(360)
}
gunangle = walkdir
walk = 20+irandom(30)
alarm[0] = 40+irandom(10)