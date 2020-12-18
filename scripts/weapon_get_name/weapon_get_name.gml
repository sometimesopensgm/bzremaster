function weapon_get_name() {
	if ds_exists(global.weapon_info, ds_type_list){
	    var info = global.weapon_info[|i];
	    if is_array(info){
	        return string(info[wEAPON_NAME]);
	    }
	    return "???"
	}


}
