key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

if (!player.active) {
	var move = key_right - key_left;
	hspeed = move * mySpeed;
}

if (player.active) {
	hspeed = 0;
}