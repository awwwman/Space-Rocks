/// @description Nuke
for (var i = 0; i < instance_number(obj_par_enemy); ++i;) {
	var enemy = instance_find(obj_par_enemy, i);
	enemy.HP = 0;
	enemy.event_user(0);
}	
score += 1000;






