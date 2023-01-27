switch(room) {
	case rm_space:
		draw_text(40, 20, "SCORE: " + string(score));
		draw_text(40, 40, "LIVES: " + string(lives));
		
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(global.cameraWidth/2, 300, "TRIPLE BULLETS!", 1, 1, 0, c, c, c, c, min(1, alarm[0]/60));
		draw_text_transformed_color(global.cameraWidth/2, 350, "DOUBLE POINTS!", 1, 1, 0, c, c, c, c, min(1, alarm[1]/60));
		draw_text_transformed_color(global.cameraWidth/2, 400, "REFLECT!", 1, 1, 0, c, c, c, c, min(1, alarm[2]/60));
		draw_text_transformed_color(global.cameraWidth/2, 450, "NUKE!", 1, 1, 0, c, c, c, c, min(1, alarm[3]/60));
		draw_text_transformed_color(global.cameraWidth/2, 500, "EXTRA LIFE!", 1, 1, 0, c, c, c, c, min(1, alarm[4]/60));

		break;
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_aqua;
		draw_text_transformed_color(room_width/2, 100, "SPACE ROCKS", 3, 3, -2, c, c, c, c, 1);
		draw_text(room_width/2, 200, 
@"Get the highest score you can!

W: Fly
A/D: Turning
S: Reverse
Space: Shoot
Shift: Dash

>> Press ENTER to start"
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
		draw_text(room_width/2, 350, "Press ENTER to restart");
		draw_set_halign(fa_left);
		break;
}
