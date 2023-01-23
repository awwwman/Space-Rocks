
function create_bullet(dir, spd = 5, fac = Factions.CHAOTIC_NEUTRAL, snd = snd_zap){
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	inst.creator = id;
	inst.faction = fac;
	inst.direction = dir;
	inst.image_angle = inst.direction + 90;
	inst.speed = spd;
	audio_play_sound(snd, 1, false);
	switch (fac) {
		case Factions.ALLY:
			inst.image_blend = c_aqua;
			break;
		case Factions.ENEMY:
			inst.image_blend = c_orange;
			break;
	}
}