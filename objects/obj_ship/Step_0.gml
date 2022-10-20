var move_speed = 0.05;

if (keyboard_check(vk_left)) {
	image_angle += 5;	
}

if (keyboard_check(vk_right)) {
	image_angle -= 5;	
}

if (keyboard_check(vk_up)) {
	motion_add(image_angle, move_speed);	
}

if (keyboard_check(vk_down)) {
	motion_add(image_angle, -move_speed);
}

speed = speed > 8 ? 8 : speed;

move_wrap(true, true, sprite_width/2);