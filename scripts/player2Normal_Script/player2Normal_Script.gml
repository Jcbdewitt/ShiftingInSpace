playerInput_Script();

//Decrease timer
hitboxTimer = hitboxTimer - 1;

#region If has control
if (!global.active) {
	//Movement
	var move = key_right - key_left;
	
	h_speed = move * mySpeed;
	
	jump_Script();
	
	//slam attack
	if (key_abilityUse1){
		if (hitboxTimer < 0) {
			h_speed = 0;
			v_speed = 0;
			player2states = player2states.attack;
		}
	}
	//pickup
	if (key_abilityUse2) {
		grabbing = true;
		sprite_index = play2CratePickup;
		image_speed = 1;
		with (instance_create_layer(x,y,"player2",hitbox)){				
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
			if (instance_place(x,y,crate)) {
				with(instance_place(x,y,crate)) {
					if (!stuck) player2.grabCrate = true;
				}
			}
		}
		if (grabCrate == true) {
			player2states = player2states.carrying;
		}
	}
	//stop moving if trying to grab crate
	if (grabbing) {
		h_speed = 0;
	}

}
#endregion

player2Animation_Script();

collisions_Script();
