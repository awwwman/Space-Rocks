switch(room) {
	case rm_space:
		draw_text(40, 20, "SCORE: " + string(score));
		draw_text(40, 40, "LIVES: " + string(lives));
		break;
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(room_width/2, 100, "SPACE ROCKS", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, 200, 
@"Score 1,000 points to win! 

W: Fly
A/D: Turning
S: Reverse
Space: Shoot
Shift: Dash

>> Press SPACE to start"
		);
		draw_set_halign(fa_left);
		break;
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(room_width/2, 100, "GAME OVER!", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, 200, "Your score was:");
		c = c_white
		draw_text_transformed_color(room_width/2, 250, string(score), 2, 2, 0, c, c, c, c, 1);
		draw_text(room_width/2, 350, "Press SPACE to restart");
		draw_set_halign(fa_left);
		break;
}
