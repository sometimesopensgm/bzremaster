spawner = instance_nearest(x,y+16,Floor)
if UberCont.dospawns = true
	instance_create(spawner.x+8,spawner.y+8,choose(Skeleton,Zombie))
alarm[0] = 480+irandom(280)