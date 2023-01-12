alarm[0] = 60 * max(irandom_range(spawn_cooldown_min, spawn_cooldown_max) - score/1000, 0.2); 
var needed_amount = 1;
if (instance_count >= to_spawn) {
	return;	
} 
else if (instance_count < to_spawn) {
	needed_amount = to_spawn - instance_count;
}

spawn_off_camera(obj_asteroid, needed_amount);

//for (var i = 0; i < needed_amount; i += 1) {
//	var spawn_on_side = choose(true, false);
//	var pos_x = choose(irandom_range(0, room_width/2 - 50), irandom_range(room_width/2 + 50, room_width));
//	var pos_y = choose(irandom_range(0, room_height/2 - 50), irandom_range(room_height/2 + 50, room_height));
	
//	if (spawn_on_side) {
//		pos_x = choose(0, room_width);
//	} 
//	else {
//		pos_y = choose(0, room_height);	
//	}
	
//	instance_create_layer(pos_x, pos_y, "Instances", obj_asteroid);
//}
