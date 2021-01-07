image_speed = 0
depth = 0
overunder = 0 //0 = solid, 1 = pit
//make the graphical effects that go on the bone zone
instance_create(x+159,y-60,BoneZoneSign)
instance_create(x+71,y-13,BoneZoneLight)
instance_create(x+135,y-13,BoneZoneLight)
instance_create(x+185,y-13,BoneZoneLight)
instance_create(x+217,y-13,BoneZoneLight)
with instance_create(x+312,y-7,BoneZoneLight)
{
	size *= 1.5
	variance = 6
}
//candle heehee
with instance_create(x+103,y-21,BoneZoneCandle)
{
	size *= 0.8
	variance = 2
}