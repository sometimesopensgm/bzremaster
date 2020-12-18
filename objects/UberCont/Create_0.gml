alarm[0] = 5
alarm[1] = 1
alarm[2] = 3
alarm[3] = 2
alarm[4] = 4
game_width = 320
game_height = 240
room_set_width(room0,game_width*3)
room_set_height(room0,game_height*3)
//surface_resize(application_surface,game_width*4,game_height*4)
randomize()
sectors = ds_grid_create(3,3)
global.playing_music_index = -1
global.playing_ambience_index = -1
mus_play(mus1)
amb_play(amb1)
//set the floor
/*var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);
for(var w = 0; w < 960/16; w++)
{
	for(var h = 0; h < 720/16; h++)
	{
		//data = tile_set_flip(data, true);
		tilemap_set(map_id, choose(1,1,1,2), w, h);
	}
}*/