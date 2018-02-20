if (!(place_meeting(x,y+global.grav,wall) || place_meeting(x,y+global.grav,crate) || place_meeting(x,y+global.grav,button))) {
	sprite_index = player2SpriteInAir;
}
else {
	if (h_speed == 0) {
		image_speed = 0;
		sprite_index = player2Sprite;		
	}
	if (h_speed != 0) {
		image_speed = 1;
		sprite_index = player2SpriteWalk;
	}
}
