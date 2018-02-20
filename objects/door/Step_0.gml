//Update place
y = y + v_speed;

//If opened by door
if ((buttonOpened) && (open)) {
	if (opener > openerMin) {
		v_speed = -moveDistance;
		opener--;
	}
	else {
		v_speed = 0;
	}	
}

//If opened by key
else if (keyOpened){
	if (oneTime > 0) {
		player.numOfCards--;
		oneTime--;
	}
	
	if (opener > openerMin) {
		v_speed = -moveDistance;
		opener--;
	}
	else {
		v_speed = 0;
	}
}

else {
	if (opener < openerMax) {	
		v_speed = moveDistance;
		opener++
	}
	else {
		v_speed = 0;	
	}
}
