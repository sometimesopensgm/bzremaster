if sprite_index = spr_jump
{
	image_index = 3
	image_speed = 0
}
if sprite_index = spr_jumpsquat
{
	if image_speed = 1
	{
		zspeed = -4
		sprite_index = spr_jump
		image_index = 0
		//calculate duration of jump
		var _length, _tempzspeed, _tempz;
		_length = 0
		_tempzspeed = zspeed
		_tempz = z
		do
		{
			_tempzspeed += zgrav
			_tempz += _tempzspeed
			_length += 1
		}
		until _tempz > 0
		jumplength = _length
	}
	if image_speed = -1
	{
		sprite_index = spr_idle
		image_speed = 1
		image_index = 0
	}
}