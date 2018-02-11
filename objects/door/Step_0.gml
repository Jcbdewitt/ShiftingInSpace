/// @desc
y = y + v_speed;

if (open) {
	player.numOfCards--;
	if (stopTimer > 0) v_speed = -3.5;
	stopTimer -= 1;
	if (stopTimer < 0){
		v_speed = 0;
		show_message("DEBUG");
	}
}
