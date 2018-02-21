playerInput_Script();

hitboxTimer = hitboxTimer - 1;

#region If has control
if (!global.active) {
	var move = key_right - key_left;
	
	h_speed = move * mySpeed;
	
	jump_Script();
	
	abilitySelect_Script();
	
	if (key_abilityUse){
		switch (abilitySelect) {
			case 0:
				if (hitboxTimer < 0) {
					h_speed = 0;
					v_speed = 0;
					player2states = player2states.attack;
				}
				break;
			case 1:
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
				break;
		}
	}
}
#endregion

player2Animation_Script();

collisions_Script();