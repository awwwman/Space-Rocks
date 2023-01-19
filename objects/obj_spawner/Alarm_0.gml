alarm[0] = 60 * max(irandom_range(spawn_cooldown_min, spawn_cooldown_max) - score/1000, 0.2); 
var needed_amount = 1;
if (instance_count >= to_spawn) {
	return;	
} 
else if (instance_count < to_spawn) {
	needed_amount = to_spawn - instance_count;
}

spawn_off_camera(obj_asteroid, needed_amount);
