 if (!fading) {
	return;	
}
image_alpha -= 1/15;

if faction == Factions.ALLY {
	image_blend = c_blue;
} else if faction == Factions.ENEMY {
	image_blend = c_red;	
}

if (image_alpha <= 0) {
	instance_destroy();	
}