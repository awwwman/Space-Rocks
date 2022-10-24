var move_speed = 0.05;
var max_move_speed = 8;
var fire_rate = 0.2;

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	image_angle += 5;	
}

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	image_angle -= 5;	
}

if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	motion_add(image_angle, move_speed);	
}

if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	motion_add(image_angle, -move_speed);
}

if (keyboard_check(vk_space)) {
	if (can_fire == true) {
		var bullet_instance = instance_create_layer(x, y, "Instances", obj_bullet);	
		bullet_instance.direction = image_angle;
		can_fire = false;
		alarm[0] = 60 * fire_rate;
	}
}

// this is an expression that clamps the speed to 8
speed = speed > max_move_speed ? max_move_speed : speed;

move_wrap(true, true, sprite_width/2);