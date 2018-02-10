key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
if (key_left) || (key_right){
	controller = 0
}
//Checks deadzone on analog stick
if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2) {
	//Replaces keyboard buttons for analog stick
	key_left = abs(min(gamepad_axis_value (0,gp_axislh),0))
	key_right = max(gamepad_axis_value(0,gp_axislh),0)
	controller = 1
}

#region Collisions
//Horizontal Collision
if(place_meeting(x+h_speed,y,wall)) {
	
	while (!place_meeting(x+sign(h_speed),y,wall)) {
		
		x = x + sign(h_speed);
		
	}
	h_speed = 0;
	
}

//Vertical Collision
if(place_meeting(x,y+v_speed,wall)) {
	//sign returns if a varible is positive(1) or negative(-1)
	while (!place_meeting(x,y+sign(v_speed),wall)) {
		
		y = y + sign(v_speed);
			
	}
	v_speed = 0;
	
}

//Door Collision
if(place_meeting(x+h_speed,y,door)) {
	
	while (!place_meeting(x+sign(h_speed),y,door)) {
		
		x = x + sign(h_speed);
		
	}
h_speed = 0;
	
}

//Smashable Wall Collision
if(place_meeting(x+h_speed,y,smashableWall)) {
	//sign returns if a varible is positive(1) or negative(-1)
	while (!place_meeting(x+sign(h_speed),y,smashableWall)) {
		
		x = x + sign(h_speed);
			
	}
	h_speed = 0;
	
}

if(place_meeting(x+h_speed,y,crate)) {
	
	while (!place_meeting(x+sign(h_speed),y,crate)) {
		
		x = x + sign(h_speed);
		
	}
	h_speed = 0;
	
}

//Vertical Collision
if(place_meeting(x,y+v_speed,crate)) {
	//sign returns if a varible is positive(1) or negative(-1)
	while (!place_meeting(x,y+sign(v_speed),crate)) {
		
		y = y + sign(v_speed);
			
	}
	v_speed = 0;
	
}
#endregion

//Update location
x = x + h_speed;
y = y + v_speed;

//Turns on gravity
v_speed = v_speed + grav;

#region Switchers
//Player switcher
if ((keyboard_check_pressed(vk_tab)) || (gamepad_button_check_pressed(0,gp_face4))) {
		if (active) {
			active = false;
			h_speed = 0;
			v_speed = 0;
		}
		else {
			active = true;
			player2.h_speed = 0;
			player2.v_speed = 0;
		}		
}
//Ability switcher
if ((keyboard_check_pressed(ord("E"))) || (gamepad_button_check_pressed(0,gp_face2))){
	abilitySelect++;
	if (abilitySelect > numOfAbilites - 1) {
		abilitySelect = 0;
	}
}
if (keyboard_check_pressed(ord("Q"))) {
	abilitySelect--;
	if (abilitySelect < 0) {
		abilitySelect = 1
	}
}
#endregion

#region If has control
if (active) {
	//Calculate movement
	var move = key_right - key_left;

	h_speed = move * mySpeed;

	//Jump
	if ((place_meeting(x,y+grav,wall)) && (keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0,gp_face1)))) {
		if (gravSwitch) {
			v_speed = jumpStrength;
		}
		else {
			v_speed = -jumpStrength;
		}
	}
	
	//Open door when approached if have a keycard
	if ((place_meeting(x+h_speed,y,door)) && (numOfCards > 0)) {
		with (instance_place(x+h_speed,y,door)) {
			open = true;
		}
	}

	//Switch through the different abilitys that player has
	if ((keyboard_check_pressed(vk_shift)) || (gamepad_button_check_pressed(0,gp_face3))){
		switch (abilitySelect) {
			case 0:
				if (gravSwitch) {
					gravSwitch = false;
					grav = 1;
					switchFix = switchFix * -1;
				}
				else {
					gravSwitch = true;
					grav = -1;
					switchFix = switchFix * -1;
				}
				break;
			case 1:
				oldX = x;
				oldY = y;
				
				with (player2) {
					oldX = x;
					oldY = y;
					x = player.oldX;
					y = player.oldY + player.switchFix;
					other.x = oldX;
					other.y = oldY;
				}
				break;
			default:
				show_message("error");
		}				
	}
}
#endregion

#region Animation

if (!place_meeting(x,y+grav,wall)) {
	sprite_index = playerSpriteInAir;
}
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
image_yscale = sign(grav);

#endregion