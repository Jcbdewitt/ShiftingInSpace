playerInput_Script();

//Decrease timer
hitboxTimer = hitboxTimer - 1;

//Movement
var move = key_right - key_left;
	
h_speed = move * mySpeed;

jump_Script();

//Slam attack
if (key_abilityUse1){
	if (hitboxTimer < 0) {
		h_speed = 0;
		v_speed = 0;
		player2states = player2states.attack;
	}
}
//Pickup crate
if (key_abilityUse2) {
	with (instance_create_layer(x,y,player2,hitbox)){				
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		if (instance_place(x,y,crate)) {
			other.grabCrate = true;		
		}
	}
	if (grabCrate == true) {
		player2states = player2states.carrying;
	}
}


player2Animation_Script();

collisions_Script();

