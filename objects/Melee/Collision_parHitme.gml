var _dohit = true
var _hitsound = sndHitStrike
if hitspark = HIT_PIERCE
_hitsound = sndHitPierce
for(var i = 0; i < ds_list_size(icanthit); i++)
{
	if ds_list_find_value(icanthit, i) = other.id
	_dohit = false
}
if team != other.team and _dohit = true
{
	scrHit(damage,other,_hitsound,hitspark,false,true,2,image_angle,other.x,other.y)
}