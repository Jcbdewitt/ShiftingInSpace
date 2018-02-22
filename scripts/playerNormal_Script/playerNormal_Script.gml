playerInput_Script();

#region Switchers
//Player switcher
if ((keyboard_check_pressed(vk_tab)) || (gamepad_button_check_pressed(0,gp_face4))) {
		if (global.active) {
			global.active = false;
			h_speed = 0;
			v_speed = 0;
		}
		else {
			global.active = true;
			player2.h_speed = 0;
			player2.v_speed = 0;
		}		
}

abilitySelect_Script();

#endregion

#region If has control
if (global.active) {
	//Calculate movement
	var move = key_right - key_left;

	h_speed = move * mySpeed;

	jump_Script();
	
	//Open door when approached if have a keycard
	if ((place_meeting(x+h_speed,y,door)) && (numOfCards > 0)) {
		with (instance_place(x+h_speed,y,door)) {
			keyOpened = true;
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
					switchOffset = switchOffset  * -1;
				}
				else {
					audio_play_sound(gravityInvert,5,false);
					gravSwitch = true;
					global.grav = -1;
					switchOffset = switchOffset * -1;
				}
				break;
			case 1:
				oldX = x;
				oldY = y;
				
				with (player2) {
					grabCrate = false;
					player2states = player2states.normal;
					oldX = x;
					oldY = y;
					x = player.oldX;
					y = player.oldY + player.switchOffset;
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

playerAnimation_Script();

collisions_Script();