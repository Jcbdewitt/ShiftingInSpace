switch (playerstates) {
	case playerstates.intro:
		playerIntro_Script();
		break;
	case playerstates.alone:
		playerAlone_Script();
		break;
	case playerstates.menu:
		sprite_index = playerSpriteRunning;
		image_speed = 1;
		collisions_Script();
		break;
	case playerstates.normal:
		playerNormal_Script();
		break;
}
//Turns on gravity
v_speed = v_speed + global.grav;

