 if (!fading) {
	return;	
}
image_alpha -= 1/15;
image_blend = c_blue;
if (image_alpha <= 0) {
	instance_destroy();	
}