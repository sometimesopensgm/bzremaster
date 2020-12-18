function button_pressed(argument0, argument1) {
	{
	    with(KeyCont){
	        if index = argument0{
	            if (argument1 == "any" || argument1 == "anykey"){
	                for(var i = 0;i<array_length(key_p);i++){
	                    if key_p[i] == 1{
	                        return true;
	                    }
	                }
	                return false;
	            }else{
	                if key_p[argument1] == 1{
	                    return true;
	                }else{
	                    return false;
	                }
	            }
	        }
	    }
	}



}
