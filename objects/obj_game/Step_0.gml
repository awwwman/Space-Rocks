var powerup_score = 500;
var powerup_duration = 5;

if (keyboard_check(vk_space)) {
	switch (room) {
		case rm_start:
			room_goto(rm_space);
			break;
		case rm_gameover:
			game_restart();
			break;
	}
}

if ((last_score + powerup_score) < score) {
	last_score = score
	alarm[0] = 60 * powerup_duration;
	powered_up = true;
}

if (room == rm_space && lives <= 0) {
	room_goto(rm_gameover);	
}
