// This controls aggro and movement
if aggro = 1
{
	walkdir = point_direction(x,y,Player.x,Player.y)
}
else
	walkdir = irandom(360)
walk = 40+irandom(30)
alarm[0] = 50+irandom(20)