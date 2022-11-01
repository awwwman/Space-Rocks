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


if (room == rm_space && lives <= 0) {
	room_goto(rm_gameover);	
}
