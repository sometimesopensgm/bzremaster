event_inherited()
repeat(8)
{
	with instance_create(random_range(bbox_left,bbox_right),random_range(bbox_top,bbox_bottom),Fire)
	{
		motion_add(90,1+random(1))
		image_xscale = 1+random(0.5)
		image_yscale = image_xscale
	}
}
snd_play_pitch(sndEnemyDie,random_range(0.8,1.2))