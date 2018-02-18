if (runOnce){
	sprite_index = player2SpriteAttack;
	image_speed = 1.15;

	h_speed = 5 * sign(image_xscale);
	v_speed = 8 * sign(image_yscale) * -1;
	
	runOnce = false;
}



if  ((image_index >= 2) && (3 >= image_index)) {
	image_index = 3;
	with (instance_create_layer(x,y,player2,hitbox)){				
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		with (instance_place(x,y,smashableWall)) {
			instance_destroy();		
		}
	}
	runOnce = true;
	
	states = states.normal;	
}

collisions();

//if (image_index == 3) {
	//image_speed = 0;
	
	

//}