/// @description makes an effect
/// @arg sprite  what the sprite is
/// @arg x  where i am made horizontally
/// @arg y  where i am made vertically
/// @arg angle  how am i angled
/// @arg following  am i following something
/// @arg existfor  how long do i last
function effect_create(_spr, _x, _y, _angle, _following, _existfor, _color) {

	var _created = instance_create(_x,_y,Effect)
	with _created
	{
		sprite_index = _spr
		if _following != -1
		{
			following = _following
			xoffset = x-following.x
			yoffset = y-following.y
		}
		image_angle = _angle
		duration = _existfor
		image_blend = _color
	}
	return _created
}
