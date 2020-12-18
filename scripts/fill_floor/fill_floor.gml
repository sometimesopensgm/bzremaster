///fill_wall(x,y,w,h)
///@arg  x  where is the patch made horizontally
///@arg  y  where is the patch made vertically
///@arg  width  how wide is the patch
///@arg  height  how high is the patch
///@arg  tile  what tile do i set
function fill_floor(argument0, argument1, argument2, argument3, argument4) {
	var _x = argument0
	var _y = argument1
	var _w = argument2
	var _h = argument3
	var _t = argument4
	    _w--;
	    _h--;
	var o = 16;

	    // Center Around x,y:
	/*_x -= floor(_w / 2) * o;
	_y -= floor(_h / 2) * o;*/

	    // Floors:
	for(var _ox = 0; _ox <= _w; _ox++){
	    for(var _oy = 0; _oy <= _h; _oy++){
	        make_floor(_x + (_ox * o), _y + (_oy * o),_t);
	    }
	}


}
