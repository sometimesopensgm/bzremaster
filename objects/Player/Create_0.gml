{
	global.player[0] = self
	// Stats
	team = TEAM_PLAYER; // _NEUTRAL = -1, _PLAYER = 0, _ENEMY = 1
	maxspeed = 2
	acceleration = 1.5
	friction = 0.2
	bloody = BLOOD_NONE
	maxhealth = 8
	// Visual
	spr_idle = sprMcbonesIdle
	spr_walk = sprMcbonesWalk
	spr_jump = sprMcbonesJump
	spr_jumpsquat = sprMcbonesJumpSquat
	right = 1
	front = 1
	
	// Weapons
	wep = 2; // Numerical weapon index
	wkick = 0; // Weapon recoil. Visual.
	reload = 0; // Cooldown time
	fireme = false; // Queues a shot. Same as NT's "clicked" variable
	gunangle = 0; // Gun Angle, as the name implies
	handrot = 0; // Hand angle
	clip = 0; // Ammo
	clipload = 0; // Reload time
	fired = 0; // Time to point your gun
	firedir = 0; // The direction you shot your gun
	parrying = 0; //Whether or not you're parrying
	
	// Jump stuff
	z = 0
	zspeed = 0
	zgrav = 0.4
	jumplength = 0
	goalfloor = 0
	goaldist = 0
	goaldir = 0
	lastfloor = 0
	
	event_inherited()
}