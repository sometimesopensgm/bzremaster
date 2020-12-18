function scrFire(argument0) {
	var _weplength = sprite_get_width(weapon_get_sprite(argument0))-sprite_get_xoffset(weapon_get_sprite(argument0))
	var _tipx = x+lengthdir_x(_weplength+8,gunangle)
	var _tipy = y+lengthdir_y(_weplength+8,gunangle)
	switch(argument0)
	{
		case 1:
			with instance_create(x,y,Bullet)
			{
				motion_add(other.gunangle+random_range(-5,5),8)
				image_angle = direction
				damage = 3
				team = other.team
				effect_create(sprMuzzleFlare,_tipx,_tipy,image_angle,-1,-1,image_blend)
			}
			snd_play_pitch(sndPistol,random_range(0.8,1.2))
			CameraCont.jerkx += lengthdir_x(weapon_get_kick(wep)*2,gunangle+180)
			CameraCont.jerky += lengthdir_y(weapon_get_kick(wep)*2,gunangle+180)
		break;
		case 2:
			with instance_create(_tipx,_tipy,FireProjectile)
			{
				motion_add(other.gunangle+random_range(-5,5),3+random(3))
				image_angle = direction
				team = other.team
			}
			/*CameraCont.jerkx += lengthdir_x(weapon_get_kick(wep)*2,gunangle+180)
			CameraCont.jerky += lengthdir_y(weapon_get_kick(wep)*2,gunangle+180)*/
		break;
		case 3:
			repeat(7)
			{
				with instance_create(x,y,Shell)
				{
					motion_add(other.gunangle+random_range(-10,10),6+random(4))
					image_angle = direction
					damage = 1
					team = other.team
					effect_create(sprMuzzleFlare,_tipx,_tipy,image_angle,-1,-1,image_blend)
				}
			}
			snd_play_pitch(sndShotgun,random_range(0.8,1.2))
			CameraCont.jerkx += lengthdir_x(weapon_get_kick(wep)*2,gunangle+180)
			CameraCont.jerky += lengthdir_y(weapon_get_kick(wep)*2,gunangle+180)
		break;
	}


}
