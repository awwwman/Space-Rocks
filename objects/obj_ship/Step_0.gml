var move_speed = 4;
var move_accel = 7;
var fire_rate = 0.2;
var fire_spread = 0;
var fire_amount = 1;
var dash_rate = 0.5;
var dash_speed = 90;
var trail_rate = 10;

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
		can_dash = false;
		var goal_x = lengthdir_x(dash_speed * dir, image_angle);
		var goal_y = lengthdir_y(dash_speed * dir, image_angle);
		alarm[1] = 60 * dash_rate;
		for (var i = 0; i < dash_speed; i += trail_rate) {
			var step_position_x = lerp(x, x + goal_x, (i)/dash_speed);
			var step_position_y = lerp(y, y + goal_y, (i)/dash_speed);
			var trail_instance = instance_create_layer(step_position_x, step_position_y, "Instances", obj_ship_trail);	
			trail_instance.image_angle = image_angle;
			trail_instance.alarm[0] = i/trail_rate;
			if (i == 0) {
				trail_instance.fading = true;	
			}
		}
		x += goal_x;
		y += goal_y;
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
			bullet_instance.creator = self;
			bullet_instance.faction = faction;
			bullet_instance.direction = image_angle + i * fire_spread - fire_spread;
			bullet_instance.image_angle = bullet_instance.direction + 90;	
		}
		image_punch = 0.5;
		can_fire = false;
		alarm[0] = 60 * fire_rate;
		audio_play_sound(snd_zap, 1, false);
	}
}

// hacky visuals
image_xscale = 1 + image_punch;
image_yscale = 1 + image_punch;
image_alpha = lerp(image_alpha, clamp(sin(alpha), 0.2, 1), 0.2);
image_punch = lerp(image_punch, 0, 0.2);
if (immunity) {
	alpha = (alpha + 1/5) % pi;
} else {
	alpha = pi/2;	
}
