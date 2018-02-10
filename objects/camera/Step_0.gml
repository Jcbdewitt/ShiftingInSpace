//Change camera depending on what room the player you are controling is in
if (player.active){
	xTo = (playerRoom - 1) * 1024 + 512; 
	if (player.x > playerRoom * 1024) {
		xTo = playerRoom * 1024 + 512;
		playerRoom++;
	}
	else if (player.x < (playerRoom - 1) * 1024) {
		xTo = (playerRoom - 2) * 1024 + 512;
		playerRoom--;
	}
}
else{
	xTo = (player2Room - 1) * 1024 + 512; 
	if (player2.x > player2Room * 1024) {
		xTo = player2Room * 1024 + 512;
		player2Room++;
	}
	else if (player2.x < (player2Room - 1) * 1024) {
		xTo = (player2Room - 2) * 1024 + 512;
		player2Room--;
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


