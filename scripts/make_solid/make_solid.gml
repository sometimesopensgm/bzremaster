///@arg  x  where is the patch made horizontally
///@arg  y  where is the patch made vertically
///@arg  solid  what solid object do i make
function make_solid(argument0, argument1, argument2) {

	var solids, makeme;
	solids[0] = Border
	solids[1] = Pit
	solids[2] = Wall
	solids[3] = Grave
	solids[4] = Altar
	solids[5] = BoneZone
	
	makeme = true;

	for(var i = 0; i < array_length_1d(solids); i++)
	{
		if place_meeting(argument0,argument1,solids[i])
		{
			with instance_place(argument0,argument1,solids[i])
			{
				instance_destroy()
			}
		}
		if place_meeting(argument0,argument1,Floor)
		{
			with instance_place(argument0,argument1,Floor)
			{
				instance_destroy()
			}
		}
	}
	if makeme = true
	with instance_create(argument0,argument1,solids[argument2])
	{
		return id
	}

}
