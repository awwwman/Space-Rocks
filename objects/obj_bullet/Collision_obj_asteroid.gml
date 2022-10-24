instance_destroy();

with(other) {
	instance_destroy();
	
	if (sprite_index == spr_asteroid_big) {
		repeat(2) {
			var asteroid_instance = instance_create_layer(x, y, "Instances", obj_asteroid);
			asteroid_instance.sprite_index = spr_asteroid_med;
		}
	} else if (sprite_index == spr_asteroid_med) {
		repeat(3) {
			var asteroid_instance = instance_create_layer(x, y, "Instances", obj_asteroid);
			asteroid_instance.sprite_index = spr_asteroid_sml;
		}
	}
}