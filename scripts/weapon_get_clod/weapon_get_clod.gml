function weapon_get_clod(argument0) {
	if ds_exists(global.weapon_info, ds_type_list){
	    var info = global.weapon_info[|argument0]
	    if is_array(info){
	        return info[WEAPON_CLOD];
	    }
	    return 10;
	}


}
