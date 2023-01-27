lives = 3;
score = 0;
last_score = 0;
timeout = 0;
delay = 70;
powerup_score = 1500;
powerup_duration = 5;
score_multiplier = 1;

draw_set_font(font_sans);

enum Factions {
	ALLY,
	ENEMY,
	CHAOTIC_NEUTRAL
}

enum Powerups {
	DOUBLE,
	REFLECT,
	EXTRA_LIFE,
	TRIPLE_BULLETS,
	NUKE
}

sprite_delete(spr_game_icon);