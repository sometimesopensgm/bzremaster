function instance_create(argument0, argument1, argument2) {
	var _instance = instance_create_layer(argument0,argument1,"Instances",argument2)
	if instance_exists(_instance)
	return _instance.id


}
