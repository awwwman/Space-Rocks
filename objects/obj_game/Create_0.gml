lives = 3;
score = 0;
last_score = 0;
timeout = 0;
delay = 70;
powerup_score = 1500;
powerup_duration = 5;

draw_set_font(font_sans);

enum Factions {
	ALLY,
	ENEMY,
	CHAOTIC_NEUTRAL
}

sprite_delete(spr_game_icon);