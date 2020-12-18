my_health = maxhealth
hit = 0
spaz = 0
iframes = 0
knockback = 0
switch(bloody)
{
	case BLOOD_NONE: // Just in case it's needed.
		bloodcol[0] = c_black
	    bloodcol[1] = c_black
	    bloodcol[2] = c_black
	case BLOOD_RED:
		bloodcol[0] = make_color_rgb(183,40,43)
	    bloodcol[1] = make_color_rgb(150,28,43)
	    bloodcol[2] = make_color_rgb(109,8,42)	
	break;
	case BLOOD_SOUL:
		bloodcol[0] = c_white
	    bloodcol[1] = make_color_rgb(164,228,252)
	    bloodcol[2] = make_color_rgb(60,188,252)
	break;
}
