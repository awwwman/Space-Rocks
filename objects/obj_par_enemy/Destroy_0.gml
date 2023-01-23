audio_play_sound(snd_die, 1, false, 1, 0, 0.7);	
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);	
}
