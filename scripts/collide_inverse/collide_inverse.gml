// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collide_inverse(){
	if (!place_meeting(x + hspeed, y, Floor)) {
	    while (place_meeting(x + sign(hspeed), y, Floor))
	        x += sign(hspeed);
	    hspeed = 0;
	}
	
	if (!place_meeting(x, y + vspeed, Floor)) {
	    while (place_meeting(x, y + sign(vspeed), Floor))
	        y += sign(vspeed);
	    vspeed = 0;
	}
}