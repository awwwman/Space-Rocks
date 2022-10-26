var move_speed = 4;
var move_accel = 7;
var fire_rate = 0.1;

// turning
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	image_angle += 5;	
}
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	image_angle -= 5;	
}

// getting vertical movement
var dir = 0;
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	dir = 1;
}
else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	dir = -1
}
// the movement might be different among different framerates
motion_set(image_angle, lerp(speed, (dir * move_speed), move_accel/100));	

move_wrap(true, true, sprite_width/2);

// attacking
if (keyboard_check(vk_space)) {
	if (can_fire == true) {
		var bullet_instance = instance_create_layer(x, y, "Instances", obj_bullet);	
		bullet_instance.direction = image_angle;
		bullet_instance.image_angle = image_angle + 90;
		can_fire = false;
		alarm[0] = 60 * fire_rate;
	}
}