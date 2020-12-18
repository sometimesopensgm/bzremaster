function button_check(argument0, argument1) {
	{
	    with(KeyCont){
	        if index = argument0{
	            if (argument1 == "any" || argument1 == "anykey"){
	                // Runs a loop to check all key indexes
	                for(var i = 0;i<array_length(key_p);i++){
	                    if key_p[i] > 0 && key_p[i] != 3{
	                        return true;
	                    }
	                }
	                return false;
	            }else{
	                if key_p[argument1] > 0 && key_p[argument1] != 3{
	                    return true;
	                }else{
	                    return false;
	                }
	            }
	        }
	    }
	}



}
