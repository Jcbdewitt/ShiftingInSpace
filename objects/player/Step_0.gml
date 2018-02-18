playerInput();

collisions();

//Update location
x = x + h_speed;
y = y + v_speed;

//Turns on gravity
v_speed = v_speed + global.grav;

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
if (key_switchRight) {
	abilitySelect++;
	if (abilitySelect > numOfAbilites - 1) {
		abilitySelect = 0;
	}
}
if (key_switchLeft) {
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

	jump();
	
	//Open door when approached if have a keycard
	if ((place_meeting(x+h_speed,y,door)) && (numOfCards > 0)) {
		with (instance_place(x+h_speed,y,door)) {
			open = true;
		}
	}

	//Switch through the different abilitys that player has
	if (key_abilityUse){
		switch (abilitySelect) {
			case 0:
				if (gravSwitch) {
					audio_play_sound(gravityNormal,5,false);
					gravSwitch = false;
					global.grav = 1;
					switchFix = switchFix * -1;
				}
				else {
					audio_play_sound(gravityInvert,5,false);
					gravSwitch = true;
					global.grav = -1;
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

if (!(place_meeting(x,y+global.grav,wall) || place_meeting(x,y+global.grav,crate) || place_meeting(x,y+global.grav,button))) {
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
image_yscale = sign(global.grav);

#endregion
