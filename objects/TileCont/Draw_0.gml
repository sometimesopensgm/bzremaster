//get where the view is on the grid
var _gridx = floor(CameraCont.camx/16)
var _gridy = floor(CameraCont.camy/16)
_gridx = clamp(_gridx,0,ds_grid_width(tiles)-1-UberCont.game_width/16)
_gridy = clamp(_gridy,0,ds_grid_height(tiles)-1-UberCont.game_width/16)


for(var w = 0; w <= UberCont.game_width/16; w++)
{
	for(var h = 0; h <= UberCont.game_height/16; h++)
	{
		var _gridtile = ds_grid_get(tiles,_gridx+w,_gridy+h)
		var _todraw = 0
		var _drawindex = 0
		if _gridtile > 0 and _gridtile < 5
		{
			_todraw = sprFloor1
			_drawindex = _gridtile-1
		}
		if _gridtile > 4 and _gridtile < 8
		{
			_todraw = sprFloor1B
			_drawindex = _gridtile-5
		}
		if _todraw != 0
		draw_sprite(_todraw,_drawindex,(_gridx+w)*16,(_gridy+h)*16)
	}
}
