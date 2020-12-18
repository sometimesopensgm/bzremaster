// Inherit the parent event
event_inherited();
var _hcol = instance_place(x+hspeed,y,parSolid)
if _hcol != noone
{
	if _hcol.overunder = 0
	{
		hspeed = -hspeed
		snd_play_pitch(sndBulletHitWall,1+random_range(-.25,.25))
		speed *= 0.8
	}
}
var _vcol = instance_place(x,y+vspeed,parSolid)
if _vcol != noone
{
	if _vcol.overunder = 0
	{
		vspeed = -vspeed
		snd_play_pitch(sndBulletHitWall,1+random_range(-.25,.25))
		speed *= 0.8
	}
}
image_angle = direction
if speed <= 0
instance_destroy()
