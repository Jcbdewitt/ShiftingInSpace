if ((((place_meeting(x,y+global.grav,wall)) || (place_meeting(x,y+global.grav,crate)) || (place_meeting(x,y+global.grav,button))) && (key_jump))) {
		onSurface = false;
		if (player.gravSwitch) {
			v_speed = jumpStrength;
		}
		else {
			v_speed = -jumpStrength;
		}
}
else {
	onSurface = true;	
}