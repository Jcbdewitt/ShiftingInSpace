playerInput_Script();

//Get ID of crate atempting to grab
if (runOnce){
	crateid = (instance_nearest(x,y,crate));
	runOnce = false;
}

//Pin crate to player
with (crateid) {
	//Where the crate is held
	x = other.x + 35 * sign(other.image_xscale);
	y = other. y + 40 * sign(other.image_yscale) * -1;
	pickedUp = true;
	stuck = false;
}
	
if (!global.active) {
	//movement
	var move = key_right - key_left;
	
	//Divided by 2 to slow down the player to add weight
	h_speed = move * mySpeed/2;
	
	//Throw crate
	if (key_abilityUse1) {
		grabCrate = false;
		runOnce = true;
		with (crateid) {
			//v_speed = -100 * !sign(other.image_yscale);
			h_speed = 10 * sign(other.image_xscale);
		}
		player2states = player2states.normal;
	}
	
	//Drop crate
	if (key_abilityUse2) {
		grabCrate = false;
		runOnce = true;
		player2states = player2states.normal;
	}
	
	
	
}

player2Animation_Script();

//Slower animation because weight
if (!(sprite_index == play2CratePickup)) image_speed = .5;

collisions_Script();
