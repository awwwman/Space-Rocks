spawn_cooldown_min = 2;
spawn_cooldown_max = 7;
alarm[0] = 5; 

//repeat(to_spawn) {
//	var pos_x = choose(irandom_range(0, room_width/2 - 90), irandom_range(room_width/2 + 90, room_width));
//	var pos_y = choose(irandom_range(0, room_height/2 - 90), irandom_range(room_height/2 + 90, room_height));
//	instanced_asteroid = instance_create_layer(pos_x, pos_y, "Instances", obj_asteroid);
//}