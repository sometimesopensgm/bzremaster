{
	/// Condensing some stuff. ~Sani
	var index = 0; // Refers to the current player for button_* scripts.
	
	// Movement
	var vp = button_check(index,KEY_SOUT) - button_check(index,KEY_NORT);
	var hp = button_check(index,KEY_EAST) - button_check(index,KEY_WEST);
	if parrying > 0
	{
		vp = 0;
		hp = 0;
	}
	// var vp = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	// var hp = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	
	if sprite_index != spr_jumpsquat and z = 0
	{
		vspeed += acceleration * sign(vp);
		hspeed += acceleration * sign(hp);
	}
	speed = median(-maxspeed,speed,maxspeed);
	//parrying
	if button_pressed(index,KEY_JUMP) and parrying = 0
	{
		parrying = 24
		wkick = -6
		snd_play(sndParry)
		with instance_create(x+lengthdir_x(8,gunangle),y+lengthdir_y(8,gunangle),Parry)
		{
			creator = other
			team = other.team
			image_angle = other.gunangle
		}
	}
	
	//combat related things
	var _diff = angle_difference(handrot,gunangle)
	if parrying = 0
		gunangle = point_direction(x,y,mouse_x,mouse_y)
	handrot -= 0.25 * _diff;
	
	if keyboard_check_pressed(vk_f1) wep = 1;
	if keyboard_check_pressed(vk_f2) wep = 2;
	
	//shooting!! aw yeah
	if ((clip > 0 && clipload == 0) || weapon_get_clip(wep) == 0)
	{
		if weapon_get_auto(wep) == 0
		{
			// NOOOOOO YOU CAN'T JUST HOLD DOWN THE FIRE KEY TO SHOOT
			if button_pressed(index,KEY_FIRE) && range(reload, 0, 9)
			{
				fireme = true;	
			}
		}
		else
		{
			// Haha automatic go brrrrrrr
			if button_check(index,KEY_FIRE) && reload == 0
			{
				fireme = true;
			}
		}
		// Shot has been queued, shoot when possible
		if(fireme) && reload == 0
		{
			reload = weapon_get_load(wep);
			wkick = weapon_get_kick(wep);
			fired = wkick + 20;
			firedir = gunangle
			if clip > 0
			clip -= weapon_get_cost(wep);
			scrFire(wep);
			/*
			TopCont.jerkx += lengthdir_x(wkick,gunangle+180)
			TopCont.jerky += lengthdir_y(wkick,gunangle+180)
			*/
			fireme = 0;
		}
	}
	else
	{
		if button_pressed(index,KEY_RELOAD) || (button_pressed(index,KEY_FIRE) && clip <= 0)
		{
			if (clipload == 0)
			{
				clipload = weapon_get_clod(wep);
				snd_play(sndNoAmmo)
			}
		}
	}
	
	// Reload time reduction, Wkick reduction, Clip reloading
	reload = max(0, reload - 1);
	wkick -= 0.5*sign(wkick)
	if(clipload > 0)
	{
		clipload -= 1;
		if(clipload <= 0)
		{
			clip = weapon_get_clip(wep);
			wkick = -weapon_get_kick(wep);
			if weapon_get_casesprite(wep) != 0
			{
				repeat(weapon_get_clip(wep))
				{
					with instance_create(x,y,Casing)
					{
						motion_set(other.gunangle+180+random_range(-20,20),2+random(2))
						sprite_index = weapon_get_casesprite(other.wep)
					}
				}
				snd_play(sndReload)
			}
		}
	}
	// Flippa der sprites
	right = mouse_x > x ? 1 : -1;
	front = mouse_y > y ? 1 : -1;
	
	// Animation handling
	if (sprite_index != spr_jumpsquat && sprite_index != spr_jump && z == 0)
	{
		if speed > friction
		{
			sprite_index = spr_walk;
			var _usespeed = hspeed
			if abs(vspeed) > abs(hspeed)
			{
				_usespeed = vspeed
			}
			image_speed = 1 * sign(_usespeed * sign(right));
		}
		else
		{
			sprite_index = spr_idle;
			image_speed = 1;
		}
	}
	else
	{
		if sprite_index != spr_jumpsquat
		{
			sprite_index = spr_idle;
			image_speed = 1;
		}
	}

	/// Put jumpan stuff here, AFTER the animation handlers
	///  ~Sani
	// Move at a fixed rate when jumpan
	if sprite_index == spr_jump
	{
		x += lengthdir_x(goaldist/jumplength, goaldir);
		y += lengthdir_y(goaldist/jumplength, goaldir);
		// I'm doing this so that regular movement doesn't interfere with it as much
		// I personally think you should set it to 0 to ensure it doesn't, but that's your call
		//    ~Sani
		speed *= 0.5;
	}
	
	// Parrying shit
	if parrying > 0
	{
		reload = 5
		parrying -= 1
	}
	
	//collide with walls
	/// I trust your code here. Also I do not like writing collision code.
	///   ~Sani
	collide(parSolid)
	//dont let yourself go back on land if you fell off the map
	if z > 0
	{
		collide(Floor)
	}
	//collide with destructible wall hitmes
	collide(Wall)
}