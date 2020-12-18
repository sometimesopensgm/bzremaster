tiles = ds_grid_create(960/16,960/16)
for(var w = 0; w < 960/16; w++)
{
	for(var h = 0; h < 720/16; h++)
	{
		//data = tile_set_flip(data, true);
		ds_grid_set(tiles, w, h, 0);
	}
}
depth = 20