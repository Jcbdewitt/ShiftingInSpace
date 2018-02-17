playerInput();

collisions();

//Update location
x = x + h_speed;
y = y + v_speed;
	
//Turns on gravity
v_speed = v_speed + global.grav;

hitboxTimer = hitboxTimer - 1;

#region If has control
if (!player.active) {
	var move = key_right - key_left;
	
	h_speed = move * mySpeed;
	
	jump();
	
	if (key_abilityUse){
		h_speed = 0;
		v_speed = 0;
		if (hitboxTimer < 0) {
			hitboxTimer = hitboxTimerReset
			with (instance_create_layer(x,y,player2,hitbox)){
				image_xscale = other.image_xscale;
				image_yscale = other.image_yscale;
				with (instance_place(x,y,smashableWall)) {
					instance_destroy();		
				}
				with (instance_place(x,y,crate)) {
					h_speed = 8;
				}
			}
		}
	}
	/*
	//Gives key cards to other player
	if ((place_meeting(x+h_speed,y,player)) && (numOfCards > 0)) {

		player.numOfCards += numOfCards;
		numOfCards--;

	}
	*/
}
#endregion

#region Animation
if (!(place_meeting(x,y+global.grav,wall) || place_meeting(x,y+global.grav,crate) || place_meeting(x,y+global.grav,button))) {
	sprite_index = Player2SpriteInAir;
}
else {
	if (h_speed == 0) {
		image_speed = 0;
		sprite_index = player2Sprite;		
	}
	if (h_speed != 0) {
		image_speed = 1;
		sprite_index = Player2SpriteWalk;
	}
}

//Flip sides on ground
if (h_speed != 0) image_xscale = sign(h_speed);

//Flip sides depending on grav
image_yscale = player.image_yscale;

#endregion

