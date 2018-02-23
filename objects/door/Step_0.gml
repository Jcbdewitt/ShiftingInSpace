//Update place
x= x + h_speed
y = y + v_speed;

if (!sideway) {
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
	else if ((keyOpened) && (!buttonOpened)){
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
}
else {
	if ((buttonOpened) && (open)) {
		if (opener > openerMin) {
			h_speed = -moveDistance;
			opener--;
		}
		else {
			h_speed = 0;
		}	
	}

	//If opened by key
	else if ((keyOpened) && (!buttonOpened)){
		if (oneTime > 0) {
			player.numOfCards--;
			oneTime--;
		}
	
		if (opener > openerMin) {
			h_speed = -moveDistance;
			opener--;
		}
		else {
			h_speed = 0;
		}
	}

	else {
		if (opener < openerMax) {	
			h_speed = moveDistance;
			opener++
		}
		else {
			h_speed = 0;	
		}
	}	
}