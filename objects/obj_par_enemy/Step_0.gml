move_wrap(true, true, sprite_width/2);

if(!instance_exists(obj_asteroid)) exit;

var inst = instance_nearest(x, y, obj_asteroid);
if inst != id {
	if point_distance(x, y, inst.x, inst.y) < 100 {
		var new_angle = point_direction(inst.x, inst.y, x, y);
		new_angle = direction - angle_difference(direction, new_angle);
		direction = lerp(direction, new_angle, 0.05);	
	}
}

if (HP <= 0) {
	event_user(0);	
}
