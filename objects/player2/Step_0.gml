switch (states) {
	case states.normal:
		normal_Script();
		break;
	case states.attack:
		attack_Script();
		break;	
}
//Update location
x = x + h_speed;
y = y + v_speed;
	
//Turns on gravity
v_speed = v_speed + global.grav;

//Flip sides on ground
if (h_speed != 0) image_xscale = sign(h_speed);

//Flip sides depending on players yscale 
image_yscale = player.image_yscale;