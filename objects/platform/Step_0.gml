if (!invert){ 
	//Switch to solid
	if (appear) {
		image_index = 1;	
		isSolid = true;
	}
	//Switch to invis
	else {
		image_index = 0;
		isSolid = false;
	}
}
//If platform starts solid
else {
	//Switch to invis
	if (appear) {
		image_index = 0;	
		isSolid = false;
	}
	//Switch to solid
	else {
		image_index = 1;
		isSolid = true;
	}
}
