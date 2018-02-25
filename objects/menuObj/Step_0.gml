playerInput_Script();
//ease in
menuX += (menuXTarget - menuX) / menuSpeed;

if(menuControl) {
	if (key_up) {
		menuCursor++;
		if(menuCursor >= menuItems) menuCursor = 0;
		
	}
	if (key_down) {
		menuCursor--;
		if (menuCursor < 0) menuCursor = menuItems-1;
	}
	
	if (key_jump) {
		menuXTarget = guiWidth+200;
		menuCommitted = menuCursor;
		menuControl = false;
	}
	
}

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