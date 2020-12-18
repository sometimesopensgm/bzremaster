function scrInitWeapons() {
	if !ds_exists(global.weapon_info, ds_type_list){
	    // You can easily access these via weapon_get_* calls
	    global.weapon_info = ds_list_create();
	    global.weapon_info[|0] = [
	        "NOTHING", //NAME
	        sprMcbonesIdle, //SPRITE
	        0,
	        0,
	        0,
	        1,
	        0,
	        0,
			0
	    ];
    
	    global.weapon_info[|1] = [
	        "PISTOL", //NAME
	        sprPistol, //SPRITE
	        9, //RELOAD
	        0, //AUTOMATIC
	        4, //KICKBACK
	        10, //CLIP SIZE
	        35, //CLIP RELOAD
	        1, //BULLETS PER CLIP
			sprBulletCasing //CASING SPRITE
	    ];
    
	    global.weapon_info[|2] = [
	        "FLAMER", //NAME
	        sprFlamer, //SPRITE
	        1, //RELOAD
	        1, //AUTOMATIC
	        2, //KICKBACK
	        60, //CLIP SIZE
	        60, //CLIP RELOAD
	        1, //BULLETS PER CLIP
			0 //CASING SPRITE
	    ];
		
		global.weapon_info[|3] = [
	        "SHOTGUN", //NAME
	        sprShotgun, //SPRITE
	        45, //RELOAD
	        0, //AUTOMATIC
	        7, //KICKBACK
	        8, //CLIP SIZE
	        75, //CLIP RELOAD
	        1, //BULLETS PER CLIP
			sprShellCasing //CASING SPRITE
	    ];
	    /*
	    wep_name[0] = "NOTHING"
	    wep_sprt[0] = sprMcbonesIdle
	    wep_load[0] = 0
	    wep_auto[0] = 0
	    wep_kick[0] = 0
	    wep_clip[0] = 1
	    wep_clod[0] = 0
	    wep_cost[0] = 0
    
	    wep_name[1] = "PISTOL"
	    wep_sprt[1] = sprPistol
	    wep_load[1] = 9
	    wep_auto[1] = 0
	    wep_kick[1] = 4
	    wep_clip[1] = 10
	    wep_clod[1] = 35
	    wep_cost[1] = 1
	    */
	}


}
