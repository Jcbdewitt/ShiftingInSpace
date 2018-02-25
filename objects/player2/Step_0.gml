//State machine to determine what script to run
switch (player2states) {
	case player2states.menu:
		sprite_index = player2SpriteWalk;
		image_speed = 1;
		collisions_Script();
		break;
	case player2states.alone:
		player2Alone_Script();
		break;
	case player2states.intro:
		player2Intro_Script();
		break;
	case player2states.normal:
		player2Normal_Script();
		break;
	case player2states.attack:
		player2Attack_Script();
		break;
	case player2states.carrying:
		player2Carry_Script();
		break;
}	
//Turns on gravity
v_speed = v_speed + global.grav;

//Flip sides on ground
if (h_speed != 0) image_xscale = sign(h_speed);

//Flip sides depending on players yscale 
if (instance_exists(player)){
	image_yscale = player.image_yscale;
}
