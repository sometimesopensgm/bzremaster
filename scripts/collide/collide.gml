// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collide(_collider){
	if (place_meeting(x + hspeed, y, _collider)) {
	    while (!place_meeting(x + sign(hspeed), y, _collider))
	        x += sign(hspeed);
	    hspeed = 0;
	}
	
	if (place_meeting(x, y + vspeed, _collider)) {
	    while (!place_meeting(x, y + sign(vspeed), _collider))
	        y += sign(vspeed);
	    vspeed = 0;
	}
}