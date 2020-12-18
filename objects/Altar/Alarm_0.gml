typ = choose(altar_item,altar_weapon)
charge = 0
maxcharge = 25
switch(typ)
{
	case altar_item:
		sprite_index = sprAltar
	break;
	case altar_weapon:
		sprite_index = sprCauldron
	break;
}
active = 1