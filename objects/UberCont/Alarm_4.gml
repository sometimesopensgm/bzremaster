///@description Make the player area safe
with parSolid
{
	if point_distance(x+8,y+8,Player.x,Player.y) < 64
	{
		makefloor = 1
		instance_destroy()
	}
}
with Wall
{
	if point_distance(x+8,y+8,Player.x,Player.y) < 64
	{
		makefloor = 1
		instance_destroy()
	}
}