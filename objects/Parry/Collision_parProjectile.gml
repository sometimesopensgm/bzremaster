if team != other.team
{
	//SUCCESSFUL PARRY
	with other
	{
		instance_destroy()	
	}
	snd_play_pitch(sndParrySuccess,parrypitch)
	parrypitch += 0.1
	effect_create(sprParry,x,y,image_angle+random_range(-10,10),-1,-1,c_white)
	sleep(100)
	with creator
	{
		parrying = 0
		reload = 0
		wkick = weapon_get_kick(wep);
		fired = wkick + 20;
		firedir = gunangle
		scrFire(wep);
	}
}