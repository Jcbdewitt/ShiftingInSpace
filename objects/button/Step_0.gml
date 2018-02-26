#region pressing button
//If pressed
if ((place_meeting(x,y+1,player2)) || (place_meeting(x,y+1,crate)) || (place_meeting(x,y+1,player))){
	image_index = 1;
	pressed = true;
}
//If not
else {
	image_index = 0;
	pressed = false;
}
#endregion

#region once pressed
//If the button opens a door
if (buttonOpened) {
	//open door if pressed
	if (pressed) {
		with(door){
	        if(doorid == other.buttonid){
	            open = true;
	        }
	    }
	}
	//close door if cant
	else {
		with(door){
	        if(doorid == other.buttonid){
	            open = false;
	        }
	    }
	}
}
else{
	//If not assigned to door make platform appear
	if (pressed) {
		with(platform){
	        if(platformid == other.buttonid){
	            appear = true;
				soundOnClose = true;
	        }
	    }
	}
	//If not pressed make platform disappear
	else {
		with(platform){
	        if(platformid == other.buttonid){
	            appear = false;
	        }
	    }
	}
}
#endregion