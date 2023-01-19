/// @description Damage event

if (immunity) {
	return;
} else {
	immunity = true;
	alarm[2] = 120;
}

lives -= 1;
if (lives <= 0) {
	audio_play_sound(snd_die, 1, false);
	instance_destroy();
} else {
	audio_play_sound(snd_hurt, 1, false);	
}

repeat(5) {
	instance_create_layer(x, y, "Instances", obj_debris);	
}

with(other) {
	instance_destroy();	
}

global.cameraOffsetX = random_range(-25, 25);
global.cameraOffsetY = random_range(-25, 25);