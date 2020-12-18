do
{
	//move
	x += lengthdir_x(16,dir)
	y += lengthdir_y(16,dir)
	//set tiles
	fill_floor(x-16+choose(-16,0,16),y-16+choose(-16,0,16),2,2,1)
}
//destroy myself if i go out of the map
until x < 0 or y < 0 or x > room_width-16 or y > room_height-16
instance_destroy()	

