// Inherit the parent event
event_inherited();
if walk > 0
{
	motion_add(walkdir,acceleration)	
}
if speed > maxspeed+knockback
speed = maxspeed+knockback
//handle sprites n shit
if speed != 0
{
	sprite_index = spr_walk	
}
else
{
	sprite_index = spr_idle	
}
if hspeed != 0
{
	right = sign(hspeed)	
}
//swing at the player if they get nearby or if there's a wall in the way
var _nearwall = instance_nearest(x,y,Wall)
if reload = 0
{
	if !collision_line(x,y,Player.x,Player.y,parOverSolid,true,false) and point_distance(x,y,Player.x,Player.y) < 64 or collision_line(x,y,Player.x,Player.y,_nearwall,true,false) and point_distance(x,y,_nearwall.x,_nearwall.y) < 64
	{
		with instance_create(x,y,Melee)
		{
			creator = other
			team = other.team
			sprite_index = sprEnemyClaw
			image_angle = point_direction(creator.x,creator.y,Player.x,Player.y)
			x += lengthdir_x(16,image_angle)
			y += lengthdir_y(16,image_angle)
			image_yscale = other.right
			offset = 16
			offdir = image_angle
		}
		snd_play_pitch(sndSwing,random_range(0.8,1.2))
		reload = 60
	}
}
//decrement reload
if reload > 0
reload -= 1
//aggro handling
//make me wander if i dont have line of sight for long enough
if collision_line(x,y,Player.x,Player.y,parOverSolid,true,false)
{
	aggrotimer += 1	
}
else //attack on sight
{
	aggrotimer = 0	
}
if aggrotimer > 60
{
	aggro = 0
}
if aggrotimer = 0
{
	aggro = 1	
}

collide(parSolid)
collide(Wall)
//uh oh stinkyyyyy