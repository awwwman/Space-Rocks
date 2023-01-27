

if (keyboard_check(vk_enter)) {
	switch (room) {
		case rm_start:
			room_goto(rm_space);
			break;
		case rm_gameover:
			game_restart();
			break;
	}
}

if (room == rm_space) {
	if (lives <= 0) {
		if (timeout >= delay) {
			room_goto(rm_gameover);
			timeout = 0;
		} else {
			timeout += 1;
		}
	}
	//if ((last_score + powerup_score) < score) {
	//	last_score = score;
	//	alarm[0] = 60 * powerup_duration;
	//	powered_up = true;
	//}
}
