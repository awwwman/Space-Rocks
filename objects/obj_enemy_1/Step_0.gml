event_inherited();

if(!instance_exists(obj_ship)) exit;

image_angle = direction;

if (point_distance(x, y, obj_ship.x, obj_ship.y) < 150) {
	if (chargeCounter < 30) {
		chargeCounter += 1;
		var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
		new_angle = direction - angle_difference(direction, new_angle);
		direction = lerp(direction, new_angle, 0.05);
		speed = 1;
	} else {
		chargeCounter = 0;
		var dashSpeed = 50;
		var trailRate = 5;
		var goal_x = lengthdir_x(dashSpeed, image_angle);
		var goal_y = lengthdir_y(dashSpeed, image_angle);
		for (var i = 0; i < dashSpeed; i += trailRate) {
			var step_position_x = lerp(x, x + goal_x, (i)/dashSpeed);
			var step_position_y = lerp(y, y + goal_y, (i)/dashSpeed);
			var trail_instance = instance_create_layer(step_position_x, step_position_y, "Instances", obj_ship_trail);	
			trail_instance.faction = self.faction;
			trail_instance.image_angle = image_angle;
			trail_instance.image_index = spr_enemy_1;
			trail_instance.alarm[0] = i/trailRate;
			if (i == 0) {
				trail_instance.fading = true;	
			}
		}
		x += goal_x;
		y += goal_y;
	}
} else {
	speed = 5;
}
