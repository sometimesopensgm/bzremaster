color = merge_color(color,fadecolor,fadespeed)
age -= 1
if age <= 0 instance_destroy()
zprevious = z
zspeed -= zadd
z += zspeed
if z < 0
{
	if place_meeting(x,y,Floor)
	{	
		z = 0
		if rotspeed > 0
		rotspeed -= 2
		else rotspeed = 0
		friction = 0.2
	}
	else
	{
		depth = 110
		collide(Floor)
		if z < 32
		{
			repeat(3)
			with instance_create(x,other.bbox_top,Spark)
			{
				color = c_gray
				fadecolor = c_dkgray
				vspeed /= 2
				additive = 1
			}
			instance_create(x,y-z,Ripple)
			instance_destroy()
		}
	}
}
image_angle += rotspeed
collide(Border)
collide(Grave)