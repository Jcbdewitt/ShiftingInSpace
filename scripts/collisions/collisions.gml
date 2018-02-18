//Horizontal Collision
if(place_meeting(x+h_speed,y,wall)) {
	
	while (!place_meeting(x+sign(h_speed),y,wall)) {
		
		x = x + sign(h_speed);
		
	}
	h_speed = 0;
	
}

//Vertical Collision
if(place_meeting(x,y+v_speed,wall)) {
	
	while (!place_meeting(x,y+sign(v_speed),wall)) {
		
		y = y + sign(v_speed);
			
	}
	v_speed = 0;
	
}

var platid = instance_nearest(x,y,platform);
//if platform is solid collid with it
if (platid.appear) {
	if (place_meeting(x+h_speed,y,platform)) {
	
		while (!place_meeting(x+sign(h_speed),y,wall)) {
		
			x = x + sign(h_speed);
		
		}
		h_speed = 0;
	
	}


	if(place_meeting(x,y+v_speed,platform)) {
	
		while (!place_meeting(x,y+sign(v_speed),platform)) {
		
			y = y + sign(v_speed);
			
		}
		v_speed = 0;
	
	}
}

if(place_meeting(x+h_speed,y,door)) {
	
	while (!place_meeting(x+sign(h_speed),y,door)) {
		
		x = x + sign(h_speed);
		
	}
h_speed = 0;
	
}

if(place_meeting(x+h_speed,y,smashableWall)) {
	
	while (!place_meeting(x+sign(h_speed),y,smashableWall)) {
		
		x = x + sign(h_speed);
			
	}
	h_speed = 0;
	
}
/*
if(place_meeting(x+h_speed,y,crate)) {
	
	while (!place_meeting(x+sign(h_speed),y,crate)) {
		
		x = x + sign(h_speed);
		
	}
	h_speed = 0;
	
}

if(place_meeting(x,y+v_speed,crate)) {

	while (!place_meeting(x,y+sign(v_speed),crate)) {
		
		y = y + sign(v_speed);
			
	}
	v_speed = 0;
	
}

if(place_meeting(x+h_speed,y,button)) {
	
	while (!place_meeting(x+sign(h_speed),y,button)) {
		
		x = x + sign(h_speed);
		
	}
	h_speed = 0;
	
}

if(place_meeting(x,y+v_speed,button)) {
	
	while (!place_meeting(x,y+sign(v_speed),button)) {
		
		y = y + sign(v_speed);
			
	}
	v_speed = 0;
	
}
*/