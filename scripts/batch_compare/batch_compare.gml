/// batch_compare(variable, value, ...)
///   Returns true if equal to any. Returns false otherwise.
function batch_compare() {
	{
		for(var i = 1;i<argument_count;i++){
			if argument[0] == argument[i]{
				return true;	
			}
		}
		return false;
	}


}
