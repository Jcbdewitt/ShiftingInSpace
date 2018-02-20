//Change camera depending on what room the player you are controling is in
if (player.active){
	xTo = (playerRoom - 1) * roomLength + roomLengthHalf;
	yTo = playerFloor * roomHeight + roomHeightHalf
	if (player.x > playerRoom * roomLength) {
		xTo = playerRoom * roomLength + roomLengthHalf;
		playerRoom++;
	}
	if (player.x < (playerRoom - 1) * roomLength) {
		xTo = (playerRoom - 2) * roomLength + roomLengthHalf;
		playerRoom--;
	}
	
	if (player.y > roomHeight) {
		yTo = roomHeight + roomHeightHalf;	
	}
	
	if (player.y < roomHeight) {
		yTo = roomHeight - roomHeightHalf;	
	}
	
}
else{
	xTo = (player2Room - 1) * roomLength + roomLengthHalf; 
	if (player2.x > player2Room * roomLength) {
		xTo = player2Room * roomLength + roomLengthHalf;
		player2Room++;
	}
	if (player2.x < (player2Room - 1) * roomLength) {
		xTo = (player2Room - 2) * roomLength + roomLengthHalf;
		player2Room--;
	}
	if (player2.y > roomHeight) {
		yTo = roomHeight + roomHeightHalf;	
	}
	
	if (player2.y < roomHeight) {
		yTo = roomHeight - roomHeightHalf;	
	}
}

//Update object position
x += (xTo - x) / 10
y += (yTo - y) / 10

//Keep from seeing past borders
x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);


