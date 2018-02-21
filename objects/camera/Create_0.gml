global.active = true;
global.grav = 1;
cam = view_camera[0];
view_w_half = camera_get_view_width(cam) * .5;
view_h_half = camera_get_view_height(cam) * .5;
xTo = xstart;
yTo = ystart;
playerRoom = 1;
player2Room = 1;
roomLength = 1024;
roomHeight = 768;
roomLengthHalf = roomLength * .5;
roomHeightHalf = roomHeight * .5;
numOfRooms = (room_width/roomLength);
playerRoom = clamp(playerRoom,0,numOfRooms);
player2Room = clamp(player2Room,0,numOfRooms);

