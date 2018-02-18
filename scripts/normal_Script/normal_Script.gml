playerInput();

hitboxTimer = hitboxTimer - 1;

#region If has control
if (!player.active) {
	var move = key_right - key_left;
	
	h_speed = move * mySpeed;
	
	jump();
	
	if ((key_abilityUse) && (hitboxTimer < 0)){
		h_speed = 0;
		v_speed = 0;
		states = states.attack;
	}
	
}
#endregion

#region Animation

if (!(place_meeting(x,y+global.grav,wall) || place_meeting(x,y+global.grav,crate) || place_meeting(x,y+global.grav,button))) {
	sprite_index = player2SpriteInAir;
}
else {
	if (h_speed == 0) {
		image_speed = 0;
		sprite_index = player2Sprite;		
	}
	if (h_speed != 0) {
		image_speed = 1;
		sprite_index = player2SpriteWalk;
	}
}
#endregion

collisions();