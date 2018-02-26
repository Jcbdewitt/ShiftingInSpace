//If not touching anything(in air)
if (!(place_meeting(x,y+global.grav,wall) || place_meeting(x,y+global.grav,crate) || place_meeting(x,y+global.grav,button) || place_meeting(x,y+global.grav,door) || place_meeting(x,y+global.grav,platform))) {
	sprite_index = playerSpriteInAir;
}

//If on ground
else {
	if (h_speed == 0) {
		image_speed = 0;
		sprite_index = playerSprite;		
	}
	if (h_speed != 0) {
		image_speed = 1;
		sprite_index = playerSpriteRunning;
	} 
}

//Flip sides on ground
if (h_speed != 0) image_xscale = sign(h_speed);

//Flip sides depending on grav
image_yscale = sign(global.grav);