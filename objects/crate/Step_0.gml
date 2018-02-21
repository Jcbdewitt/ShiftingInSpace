/// @desc
x = x + h_speed;
y = y + v_speed;

if (!player2.grabCrate) {
	v_speed = v_speed + global.grav;
}

if ((pickedUp) && (!player2.grabCrate)) {
	if (place_meeting(x,y+v_speed,wall)){
		h_speed = 0;
		pickedUp = false;
	}
}

collisions_Script();
