repeat(12)
with instance_create(x,y,Spark)
{
	color = other.trailcol
	fadecolor = other.trailfadecol
	image_alpha = 1
	motion_set(other.direction+180-10+irandom(20),1+irandom(2))
	age *= 0.7
}