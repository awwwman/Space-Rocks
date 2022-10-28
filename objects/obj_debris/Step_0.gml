image_alpha -= 1/60;
image_angle += 1/60;
if (image_alpha <= 0) {
	instance_destroy();	
}
