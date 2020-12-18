// Inherit the parent event
event_inherited();
if walk > 0
	motion_add(walkdir,acceleration)

if speed > maxspeed+knockback
speed = maxspeed+knockback

//handle sprites n shit
if speed != 0
	sprite_index = spr_walk	
else
	sprite_index = spr_idle	
	
if hspeed != 0
	right = sign(hspeed)

//gun shit
if gunangle <= 180
	front = -1
else
	front = 1

if wkick > 0
	wkick -= 0.5
	
var _diff = angle_difference(handrot,gunangle)
handrot -= 0.25 * _diff;
//aggro handling
//make me wander if i dont have line of sight for long enough
if collision_line(x,y,Player.x,Player.y,parOverSolid,true,false)
	aggrotimer += 1	

else //attack on sight
	aggrotimer = 0	

if aggrotimer > 60
	aggro = 0

if aggrotimer = 0
	aggro = 1	


collide(parSolid)
collide(Wall)