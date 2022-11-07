var move_speed = 4;
var move_accel = 7;
var fire_rate = 0.2;
var fire_spread = 0;
var fire_amount = 1;
var dash_rate = 0.5;

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

if (keyboard_check(vk_shift)) {
	// dash either way if the user is not holding down anything
	dir = dir != 0 ? dir : 1
	if (can_dash == true) {
		x += lengthdir_x(90 * dir, image_angle);
		y += lengthdir_y(90 * dir, image_angle);
		can_dash = false;
		alarm[1] = 60 * dash_rate;
	}
}

if (instance_find(obj_game, 0).powered_up == true) {
	fire_spread = 15;
	fire_amount = 3;
} else {
	fire_spread = 0;
	fire_amount = 1;
}

move_wrap(true, true, sprite_width/2);

// attacking
if (keyboard_check(vk_space)) {
	if (can_fire == true) {	
		for (var i = 0; i < fire_amount; i += 1) {
			var bullet_instance = instance_create_layer(x, y, "Instances", obj_bullet);	
			bullet_instance.direction = image_angle + i * fire_spread - fire_spread;
			bullet_instance.image_angle = bullet_instance.direction + 90;	
		}
		image_punch = 0.5;
		can_fire = false;
		alarm[0] = 60 * fire_rate;
	}
}

image_xscale = 1 + image_punch;
image_yscale = 1 + image_punch;
image_punch = lerp(image_punch, 0, 0.2);