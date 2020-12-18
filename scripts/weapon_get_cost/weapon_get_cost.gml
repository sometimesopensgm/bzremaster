function weapon_get_cost(argument0) {
	if ds_exists(global.weapon_info, ds_type_list){
	    var info = global.weapon_info[|argument0]
	    if is_array(info){
	        return info[WEAPON_COST];
	    }
	    return 0; // Free by default hoes
	}


}
