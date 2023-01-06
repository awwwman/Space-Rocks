instance_destroy();
lives -= 1;
audio_play_sound(snd_die, 1, false);

repeat(5) {
	instance_create_layer(x, y, "Instances", obj_debris);	
}

with(other) {
	instance_destroy();	
}