if (sprite_index = doorSprite) {
	image_speed = 1;	
}
else {
	image_speed = 0;	
}

if ((buttonOpened) && (open)) {
	sprite_index = doorOpenedSprite;	
}

//If opened by key
else if ((keyOpened) && (!buttonOpened)){
	if (oneTime > 0) {
		player.numOfCards--;
		oneTime--;
	}
	open = true;
	
	sprite_index = doorOpenedSprite;
}

else {
	open = false;
	sprite_index = doorSprite;
}	
