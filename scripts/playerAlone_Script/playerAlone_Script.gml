playerInput_Script();

#region Calculate movement
var move = key_right - key_left;

h_speed = move * mySpeed;

jump_Script();
#endregion

//Open door when approached if have a keycard
if ((place_meeting(x+h_speed,y,door)) && (numOfCards > 0)) {
	with (instance_place(x+h_speed,y,door)) {
		keyOpened = true;
	}
}

//Gravity Switch power
if (key_abilityUse1){
	if (gravSwitch) {
		audio_play_sound(gravityNormal,5,false);
		gravSwitch = false;
		global.grav = 1;
	}
	else {
		audio_play_sound(gravityInvert,5,false);
		gravSwitch = true;
		global.grav = -1;
	}
}

playerAnimation_Script();

collisions_Script();
