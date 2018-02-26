//Deicdeds to apply gravity or not
if (!(player2.grabCrate || stuck)) {
	v_speed = v_speed + global.grav;
}

//If player2 is holding
if (((pickedUp) && (!player2.grabCrate))&& !(stuck)) {
	//If player2 drops
	if (place_meeting(x,y+v_speed,wall)){
		h_speed = 0;
		pickedUp = false;
	}
}

if (stuck) {
	h_speed = 0; 	
}

collisions_Script();