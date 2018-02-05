key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
if (keyboard_check_pressed(vk_tab)) {
		if (active) {
			hspeed = 0
			active = false;
		} else {
			active = true;
		}
		
}
	
if (active) {
	var move = key_right - key_left;
	hspeed = move * mySpeed;
	
}