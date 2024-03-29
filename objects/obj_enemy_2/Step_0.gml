event_inherited();

if(!instance_exists(obj_ship)) exit;

if (point_distance(x, y, obj_ship.x, obj_ship.y) < 150) {
	bulletCounter = 0;
	if boomCounter < 80 {
		boomCounter += 1;
	} else {
		boomCounter = 0;
		turnCounter = (turnCounter + 1) % turnPieces;
		for (var i = 0; i < turnPieces; i += 1) {
			var fireDirection = (i * (360/turnPieces)) + (image_angle - (360/turnPieces) * turnCounter);
			create_bullet(fireDirection, 2, self.faction);
		}
	}	
}
