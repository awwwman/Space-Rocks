with(other) {
	var powerup_type = image_index;
	instance_destroy();
}

switch(powerup_type) {
	case Powerups.DOUBLE:
		obj_game.score_multiplier = 2;
		obj_game.alarm[1] = room_speed * 7;
		break;
	case Powerups.TRIPLE_BULLETS:
		obj_game.alarm[0] = room_speed * 7;
		obj_game.powered_up = true;
		break;
	case Powerups.REFLECT:
		obj_game.alarm[2] = room_speed * 7;
		break;
	case Powerups.NUKE:
		obj_game.alarm[3] = room_speed * 2;
		break;
	case Powerups.EXTRA_LIFE:
		obj_game.alarm[4] = room_speed * 2;
		lives += 1;
		break;
}