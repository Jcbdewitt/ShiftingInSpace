//If door is closed animate door
if (sprite_index = doorSprite) {
	image_speed = 1;	
}
else {
	image_speed = 0;	
}

//If opened by a button
if ((buttonOpened) && (open)) {
	sprite_index = doorOpenedSprite;	
	soundOnClose = true;
	if (runOnce) {
		audio_play_sound(activateMusic,15,false);
		runOnce = false
	}
}

//If opened by key
else if ((keyOpened) && (!buttonOpened)){
	if (oneTime > 0) {
		player.numOfCards--;
		oneTime--;
		audio_play_sound(activateMusic,15,false);
	}
	open = true;
	sprite_index = doorOpenedSprite;
}

//close door if not open
else {
	open = false;
	sprite_index = doorSprite;
	if (soundOnClose) {
		audio_play_sound(deactivateMusic,15,false);
		soundOnClose = false;
		runOnce = true;
	}
}