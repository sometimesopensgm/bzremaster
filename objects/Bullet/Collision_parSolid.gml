if other.overunder = 0
{
	instance_destroy()
	snd_play_pitch(sndBulletHitWall,random_range(0.8,1.2))
	effect_create(sprBulletHit,x,y,image_angle+180,-1,-1,image_blend)
}