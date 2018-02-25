#region pressing button
if (!stuck) {
	if (place_meeting(x,y+1,crate)) {
		image_index = 1;
		pressed = true;
		stuck = true;
	}
	else if ((place_meeting(x,y+1,player2))|| (place_meeting(x,y+1,player))){
		image_index = 1;
		pressed = true;
	}
	else {
		image_index = 0;
		pressed = false;
	}
}
#endregion

#region once pressed
if (buttonOpened) {
	if (pressed) {
		with(door){
	        if(doorid == other.buttonid){
	            open = true;
	        }
	    }
	}
	else {
		with(door){
	        if(doorid == other.buttonid){
	            open = false;
	        }
	    }
	}
}
else{ 
	if (pressed) {
		with(platform){
	        if(platformid == other.buttonid){
	            appear = true;
	        }
	    }
	}
	else {
		with(platform){
	        if(platformid == other.buttonid){
	            appear = false;
	        }
	    }
	}
}
#endregion

if ((stuck) && (runOnce)) {
	stuckId = instance_nearest(x,y,crate);
	runOnce = false;
	
	with (stuckId) {
		stuck = true;
		if (player.gravSwitch) {
			y = other.y + 10;
			x = other.x;
		}
		else {
			y = other.y - 35;
			x = other.x - 10;
		}
	}
}