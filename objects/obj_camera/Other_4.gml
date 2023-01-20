/// @description Camera Setup

global.cameraX = 0;
global.cameraY = 0;
global.cameraOffsetX = 0;
global.cameraOffsetY = 0;
target = obj_ship;

global.cameraWidth = 500;
global.cameraHeight = 500;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

displaySize = 2;
displayWidth = global.cameraWidth * displaySize;
displayHeight = global.cameraHeight * displaySize;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);
alarm[0] = 1;

display_set_gui_size(global.cameraWidth, global.cameraHeight);

sprite_delete(spr_camera_icon);

