//Menu Inputs
key_up = (keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_padu));
key_down = (keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_padd));
key_select = (keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face1));

//ease in
menuX += (menuXTarget - menuX) / menuSpeed;

//If on menu screen
if(menuControl) {
	//go up menu
	if (key_up) {
		menuCursor++;
		if(menuCursor >= menuItems) menuCursor = 0;
		
	}
	
	//go down menu
	if (key_down) {
		menuCursor--;
		if (menuCursor < 0) menuCursor = menuItems-1;
	}
	
	//Make selection
	if (key_select) {
		menuXTarget = guiWidth+200;
		menuCommitted = menuCursor;
		menuControl = false;
	}
	
}

//if player made choice
if ((menuX > guiWidth +150) && (menuCommitted != -1)){
	
	switch(menuCommitted) {
		case 1:
			room_goto_next();
			break;
		case 0:
			game_end();
			break;
		default:
			show_message("Error");
			break;
	}

}