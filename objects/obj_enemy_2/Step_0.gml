event_inherited();

if(!instance_exists(obj_ship)) exit;

if (point_distance(x, y, obj_ship.x, obj_ship.y) < 150 && (point_distance(x, y, obj_ship.x, obj_ship.y) > 90)) {
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
} else if (point_distance(x, y, obj_ship.x, obj_ship.y) < 90) {
	boomCounter = 0;
	if bulletCounter < 5 {
		bulletCounter += 1;
	} else {
		bulletCounter = 0;
		turnCounter = (turnCounter + 1) % turnPieces;
		var fireDirection = (360 / turnPieces) * turnCounter
		create_bullet(fireDirection + image_angle - (360/turnPieces), 5, self.faction);
	}	
}
