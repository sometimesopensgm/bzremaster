function make_floor(argument0, argument1, argument2) {
	if argument0 >= 0 and argument0 <= room_width-16 and argument1 >= 0 and argument1 <= room_height-16
	if !place_meeting(argument0,argument1,Floor) and !place_meeting(x,y,Border)
	{
		if place_meeting(argument0,argument1,Pit)
		{
			with instance_place(argument0,argument1,Pit)
			{
				instance_destroy()	
			}
		}
		with instance_create(argument0,argument1,Floor)
		{
			sprite_index = sprFloor1
			if argument2 = 1
			{
				sprite_index = sprFloor1B
				depth += 1
			}
			return id
		}
	}
	if place_meeting(argument0,argument1,Floor)
	{
		with instance_place(argument0,argument1,Floor)
		{
			sprite_index = sprFloor1
			if argument2 = 1
			{
				sprite_index = sprFloor1B
				depth += 1
			}
			return id
		}
	}


}
