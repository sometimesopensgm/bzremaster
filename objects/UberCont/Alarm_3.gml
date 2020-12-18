///@description Sector shit
//Make a giant pit in one of the sectors
do
{
	var _valid = 1
	var _sx = irandom(2)
	var _sy = irandom(2)
	if _sx = 1 and _sy = 1
	{
		_valid = 0
	}
}
until _valid = 1
var _pitx = (_sx*20)*16
var _pity = (_sy*15)*16
fill_solid(_pitx,_pity,20,15,solid_pit,1.2)
ds_grid_set(sectors,_sx,_sy,sector_pit)
//Put a smaller pit in two of the sectors
repeat(2)
{
	do
	{
		var _valid = 1
		var _sx = irandom(2)
		var _sy = irandom(2)
		if _sx = 1 and _sy = 1 or ds_grid_get(sectors,_sx,_sy) != 0
		{
			_valid = 0
		}
	}
	until _valid = 1
	var _pitx = ((_sx*20)*16)+160
	var _pity = ((_sy*15)*16)+120
	with instance_create(_pitx,_pity,PitMaker)
	{
		leftbound = x-160
		rightbound = x+160
		topbound = y-120
		bottombound = y+120
	}
	ds_grid_set(sectors,_sx,_sy,sector_smallpit)
}
//Put a grave and randomly distributed borders and walls in the rest of the sectors
for(var l = 0; l <= 2; l++)
{
	for(var h = 0; h <= 2; h++)
	{
		if ds_grid_get(sectors,l,h) = 0
		{
			var _placed = 0
			do
			{
				var _cornerx = l*320
				var _cornery = h*240
				var _xoffset = (irandom(20))*16
				var _yoffset = (irandom(15))*16
				var _toplace = 3
				if _placed > 0
				_toplace = choose(0,1,1,2,2)
				if place_meeting(_cornerx+_xoffset,_cornery+_yoffset,Floor)
				{
					make_solid(_cornerx+_xoffset,_cornery+_yoffset,_toplace)
					if _placed > 0
					{
						repeat(2+_toplace+irandom(3))
						{
							var _extrax = choose(-16,0,16)
							var _extray = choose(-16,0,16)
							if _toplace = 2 and irandom(2) = 1
							{
								_xoffset += _extrax
								_yoffset += _extray
								fill_solid(_cornerx+_xoffset+_extrax,_cornery+_yoffset+_extray,2,2,_toplace,0)
							}
							else
							make_solid(_cornerx+_xoffset+_extrax,_cornery+_yoffset+_extray,_toplace)
						}
					}
					_placed += 1
				}
			}
			until _placed >= 7
			//make an altar in each sector
			var _altarx = choose(-32,-16,0,16,32)
			var _altary = choose(-32,-16,0,16,32)
			with instance_nearest(_cornerx+160+_altarx,_cornery+120+_altary,Floor)
			{
				make_solid(x,y,solid_altar)	
			}
		}
	}
}