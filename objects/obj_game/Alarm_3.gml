/// @description Nuke
for (var i = 0; i < instance_number(obj_enemy_0); ++i;) {
	var enemy = instance_find(obj_enemy_0, i);
	enemy.HP = 0;
	with(enemy) {
		event_user(0);	
	}
}	
for (var i = 0; i < instance_number(obj_enemy_1); ++i;) {
	var enemy = instance_find(obj_enemy_1, i);
	enemy.HP = 0;
	with(enemy) {
		event_user(0);	
	}
}	
for (var i = 0; i < instance_number(obj_enemy_2); ++i;) {
	var enemy = instance_find(obj_enemy_2, i);
	enemy.HP = 0;
	with(enemy) {
		event_user(0);	
	}
}	
for (var i = 0; i < instance_number(obj_asteroid); ++i;) {
	var enemy = instance_find(obj_asteroid, i);
	with(enemy) {
		event_user(0);	
	}
}	
score += 500;






