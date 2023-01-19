global.cameraOffsetX = lerp(global.cameraOffsetX, 0, 0.3);
global.cameraOffsetY = lerp(global.cameraOffsetY, 0, 0.3);

if (instance_exists(target)) {
	global.cameraX = target.x + global.cameraOffsetX - (global.cameraWidth/2);
	global.cameraY = target.y + global.cameraOffsetY - (global.cameraHeight/2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

if (room == rm_space) {
	for (var i = 0; i < 3; i += 1) {
		layer_x("Parallax_" + string(i), global.cameraX * (1 - (i+0.3)/3));
		layer_y("Parallax_" + string(i), global.cameraY * (1 - (i+0.3)/3));
	}
}