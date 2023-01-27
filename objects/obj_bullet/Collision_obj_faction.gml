
if (other.id == creator) exit;

instance_destroy();

if (other.faction == faction) exit;

if faction == Factions.ALLY {
	if other.faction == Factions.ENEMY {
		switch (other.object_index) {
			case obj_enemy_0:
				score += 90 * obj_game.score_multiplier;
				break;
			case obj_enemy_1:
				score += 70 * obj_game.score_multiplier;
				break;
			case obj_enemy_2:
				score += 110 * obj_game.score_multiplier;
				break;
		}
	} else {
		switch (other.sprite_index) {
			case spr_asteroid_big:
				score += 50 * obj_game.score_multiplier;
				break;
			case spr_asteroid_med:
				score += 30 * obj_game.score_multiplier;
				break;
			case spr_asteroid_sml:
				score += 10 * obj_game.score_multiplier;
				break;
		}
	}
}

with(other) {
	event_perform(ev_other, ev_user0);
}