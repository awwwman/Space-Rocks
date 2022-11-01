instance_destroy();

with(other) {
	instance_destroy();
	
	if (sprite_index == spr_asteroid_big) {
		score += 50;
		repeat(2) {
			var asteroid_instance = instance_create_layer(x, y, "Instances", obj_asteroid);
			asteroid_instance.sprite_index = spr_asteroid_med;
		}
		repeat(10) {
			instance_create_layer(x, y, "Instances", obj_debris);	
		}
	} else if (sprite_index == spr_asteroid_med) {
		score += 30;
		repeat(3) {
			var asteroid_instance = instance_create_layer(x, y, "Instances", obj_asteroid);
			asteroid_instance.sprite_index = spr_asteroid_sml;
		}
		repeat(5) {
			instance_create_layer(x, y, "Instances", obj_debris);	
		}
	} else {
		score += 10;
		repeat(3) {
			instance_create_layer(x, y, "Instances", obj_debris);	
		}	
	}
}