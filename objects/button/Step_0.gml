/// @desc
#region pressing button
if (place_meeting(x,y+1,player2)){
	image_index = 1;
	pressed = true;
}
else if (place_meeting(x,y+crate.sprite_height/2,crate)){
	image_index = 1;
	pressed = true;
}
else if (place_meeting(x,y+1,player)){
	image_index = 1;		
	pressed = true;
}
else {
	image_index = 0;
	pressed = false;
}
#endregion

#region once pressed
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
#endregion