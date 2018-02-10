/// @desc
cam = view_camera[0];
view_w_half = camera_get_view_width(cam) * .5;
view_h_half = camera_get_view_height(cam) * .5;
xTo = xstart;
yTo = ystart;
numOfRooms = 3;
playerRoom = 1;
player2Room = 1;
playerRoom = clamp(playerRoom,0,numOfRooms);
player2Room = clamp(player2Room,0,numOfRooms);
roomLength = 1024;
roomLengthHalf = roomLength * .5;