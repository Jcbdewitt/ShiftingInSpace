switch (playerstates) {
	case playerstates.alone:
	
		break;
	case playerstates.normal:
		playerNormal_Script();
		break;
}

//Update location
x = x + h_speed;
y = y + v_speed;

//Turns on gravity
v_speed = v_speed + global.grav;

