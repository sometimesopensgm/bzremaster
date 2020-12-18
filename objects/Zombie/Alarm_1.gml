///@description Fire gun
if gun = 0
{
	gunangle = point_direction(x,y,target.x,target.y)+random_range(-5,5)
	//FIRE RIFLE!
	var _weplength = sprite_get_width(weapon_get_sprite(spr_gun))-sprite_get_xoffset(weapon_get_sprite(spr_gun))
	var _tipx = x+lengthdir_x(_weplength+8,gunangle)
	var _tipy = y+lengthdir_y(_weplength+8,gunangle)
	with instance_create(x,y,Bullet)
	{
		motion_add(other.gunangle,3)
		image_angle = direction
		damage = 3
		team = other.team
		sprite_index = sprEnemyBullet
		effect_create(sprEnemyMuzzleFlare,_tipx,_tipy,image_angle,-1,-1,image_blend)
	}
	wkick = 3
	snd_play_pitch(sndEnemyFire,random_range(0.8,1.2))
}
if gun = 1
{
	gunangle = point_direction(x,y,target.x,target.y)+random_range(-5,5)
	//FIRE SHOTGUN!
	var _weplength = sprite_get_width(weapon_get_sprite(spr_gun))-sprite_get_xoffset(weapon_get_sprite(spr_gun))
	var _tipx = x+lengthdir_x(_weplength+8,gunangle)
	var _tipy = y+lengthdir_y(_weplength+8,gunangle)
	repeat(7)
	{
		with instance_create(x,y,Shell)
		{
			motion_add(other.gunangle+random_range(-20,20),4+random(1))
			image_angle = direction
			damage = 1
			team = other.team
			sprite_index = sprEnemyShell
			effect_create(sprEnemyMuzzleFlare,_tipx,_tipy,image_angle,-1,-1,image_blend)
		}
	}
	snd_play_pitch(sndShotgun,random_range(1,1.4))
	wkick = 6
}