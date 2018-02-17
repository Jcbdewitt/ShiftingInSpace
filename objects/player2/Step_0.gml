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
	
	if ((key_abilityUse) && (hitboxTimer < 0)){
		hitboxTimer = hitboxTimerReset;
		v_speed = -15;
		pound = true;
		//show_message("DEBUG")
	}
	if ((sprite_index == player2SpriteAttack) && ((image_index >= 2) && (3 >= image_index))) {
		with (instance_create_layer(x,y,player2,hitbox)){
				
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
			with (instance_place(x,y,smashableWall)) {
				instance_destroy();		
			}
		}
		pound = false;
	}
}
#endregion

#region Animation
if (pound) {
	sprite_index = player2SpriteAttack;
	image_speed = .85;
}
else {
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
}

//Flip sides on ground
if (h_speed != 0) image_xscale = sign(h_speed);

//Flip sides depending on grav
image_yscale = player.image_yscale;

#endregion

