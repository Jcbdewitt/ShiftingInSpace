if (!invert){ 
	if (appear) {
		image_index = 1;	
		isSolid = true;
	}
	else {
		image_index = 0;
		isSolid = false
	}
}
else {
	if (appear) {
		image_index = 0;	
		isSolid = false;
	}
	else {
		image_index = 1;
		isSolid = true;
	}
}