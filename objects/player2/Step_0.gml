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
v_speed = v_speed + player.grav;

#region If has control
//Movement
if (!player.active) {
	var move = key_right - key_left;

	h_speed = move * mySpeed;

	if ((place_meeting(x,y+player.floorPosition,wall)) && (keyboard_check_pressed(vk_space))) {
		if (player.gravSwitch) {
			v_speed = player.jumpStrength;
		}
		else {
			v_speed = -player.jumpStrength;
		}
	}
}
#endregion