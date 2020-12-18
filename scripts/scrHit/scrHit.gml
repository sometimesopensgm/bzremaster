/// @description hits shit
/// @arg damage  how much damage it does
/// @arg hitting  what object we're hitting
/// @arg hitsound  what sound we play on hit
/// @arg hitspark  what effect the hit makes
/// @arg destroyme  am i destroyed when i hit
/// @arg piercing  for handling piercing
/// @arg knockback  how much the enemy is knocked back
/// @arg knockbackdir  which direction the enemy is knocked back
/// @arg x  where to make particles on x axis
/// @arg y  where to make particles on y axis
function scrHit(_damage,_hitting,_hitsound,_hitspark,_destroyme,_piercing,_knockback,_knockbackdir,_x,_y)
{
var _orig = self
if team != _hitting.team
{
	with _hitting
	{
		my_health -= _damage
		hit = 12
		spaz = hit/3
		if _knockback > 0 and _hitting.object_index != Player
		{
			motion_add(_knockbackdir,knockback + (_knockback*2)*size)
		}
		if _hitting.team = 1
		scrEnemyHitEvent()
		snd_play_pitch(_hitsound,1+random_range(-.2,.2))
		if _hitspark = HIT_SLASH
		{
			effect_create(sprCut,_x,_y,random_range(-20,20),-1,-1,c_white)
			with instance_create(_x,_y,Flash)
			{
				size = 12	
			}
		}
		if _hitspark = HIT_IMPACT
		{
			repeat(_damage)
			{
				with instance_create(_x,_y,HitSpark)
				{
					direction = irandom(360)
					speed = 4+random(1)
					trailcol = c_white
					if _orig.team = 0
					trailfadecol = c_yellow
					if _orig.team = 1
					trailfadecol = c_red
				}
				with instance_create(_x,_y,Flash)
				{
					size = 12	
				}
			}
		}
		if _hitspark = HIT_PIERCE
		{
			with effect_create(sprPierce,_x,_y,irandom(360),-1,-1,c_white)
			{
				bloom = false	
			}
			
		}
		if bloody > 0
		{
			repeat(_damage)
			{
				with effect_create(sprBloodStreak,_x,_y,_orig.direction-15+irandom(30),-1,-1,_hitting.bloodcol[irandom(2)])
				{
					motion_set(image_angle,1+random(1))
					image_xscale = 1+random(0.5)
					image_speed *= 2
					bloom = 0
					additive = 0
				}
				repeat(2)
				with instance_create(_x,_y,Spark)
				{
					color = _hitting.bloodcol[irandom(2)]
					fadecolor = color
					motion_set(_orig.direction-15+irandom(30),1+random(3))
					age *= 1.1
				}
			}
		}
	}
	if _hitting = Player.id
	{
		snd_play(sndHitStrike)
		var _dir = irandom(360)
		CameraCont.jerkx += lengthdir_x(64,_dir)
		CameraCont.jerky += lengthdir_y(64,_dir)
		other.iframes = 60
		screenshake(10)
	}
	if _piercing = true
	{
		ds_list_add(icanthit,_hitting.id)
		//sleep(100)
	}
	if _destroyme = true
	instance_destroy()
}
}