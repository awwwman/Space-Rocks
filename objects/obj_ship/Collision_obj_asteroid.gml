instance_destroy();

repeat(5) {
	instance_create_layer(x, y, "Instances", obj_debris);	
}

with(other) {
	instance_destroy();	
}