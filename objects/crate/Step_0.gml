if (!(player2.grabCrate || stuck)) {
	v_speed = v_speed + global.grav;
}

if (((pickedUp) && (!player2.grabCrate))&& !(stuck)) {
	if (place_meeting(x,y+v_speed,wall)){
		h_speed = 0;
		pickedUp = false;
	}
}

collisions_Script();
