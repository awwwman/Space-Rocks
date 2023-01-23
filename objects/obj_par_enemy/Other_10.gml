/// @description Take Damage

HP -= 1;
if (HP <= 0) {
	instance_destroy();
} else {
	audio_play_sound(snd_hurt, 1, false, 1, 0, 0.7);	
}

repeat(5) {
	instance_create_layer(x, y, "Instances", obj_debris);	
}
