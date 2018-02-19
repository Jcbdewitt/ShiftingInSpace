/// @desc
y = y + v_speed;
if (doorButton) {
	if (open) {
		if (stopTimer > 0) v_speed = -3.5;
		stopTimer -= 1;
		if (stopTimer < 0) v_speed = 0;	
	}
}
else{
	if (open) {
		if (oneTime > 0) {
			player.numOfCards--;
			oneTime--;
		}
	
		if (stopTimer > 0) v_speed = -3.5;
		stopTimer -= 1;
		if (stopTimer < 0) v_speed = 0;
	}
}
