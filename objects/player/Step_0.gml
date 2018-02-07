key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
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
#endregion

//Update location
x = x + h_speed;
y = y + v_speed;

//Turns on gravity
v_speed = v_speed + grav;

#region Switchers
//Player switcher
if (keyboard_check_pressed(vk_tab)) {
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
if (keyboard_check_pressed(ord("E"))) {
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
	var move = key_right - key_left;

	h_speed = move * mySpeed;

	if ((place_meeting(x,y+floorPosition,wall)) && (keyboard_check_pressed(vk_space))) {
		if (gravSwitch) {
			v_speed = jumpStrength;
		}
		else {
			v_speed = -jumpStrength;
		}
	}

	if (keyboard_check_pressed(vk_shift)){
		switch (abilitySelect) {
			case 0:
				if (gravSwitch) {
					gravSwitch = false;
				}
				else {
					gravSwitch = true;
				}
				break;
			case 1:
				oldX = x;
				oldY = y;
				
				with (player2) {
					oldX = x;
					oldY = y;
					x = player.oldX;
					y = player.oldY;
					other.x = oldX;
					other.y = oldY;
				}
				break;
			default:
				show_message("error");
		}				
	}
	
	if (gravSwitch) {
		grav = -1;
		floorPosition = -1;
	}
	else {
		grav = 1;
		floorPosition = 1;
	}
}
#endregion
