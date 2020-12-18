// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyHitEvent(){
	switch(object_get_name(object_index))
	{
		case "Skeleton":
			if irandom(1) = 0
			snd_play_pitch(sndSkeletonHit,random_range(0.8,1.2))
		break;
	}
}