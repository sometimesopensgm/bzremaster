team = TEAM_ENEMY
maxhealth = 11
bloody = 1
size = 1
right = 1
front = 1
gun = choose(0,1)
spr_idle = sprZombieIdle
spr_walk = sprZombieWalk
spr_gun = sprZombieGun
if gun = 1
spr_gun = sprShotgun
gunangle = irandom(360)
handrot = gunangle
wkick = 0
maxspeed = 1
walkdir = irandom(360)
walk = 0
acceleration = 0.5
aggrotimer = 0
aggro = 1
freezetime = 70

alarm[0] = 60+irandom(20)
event_inherited()