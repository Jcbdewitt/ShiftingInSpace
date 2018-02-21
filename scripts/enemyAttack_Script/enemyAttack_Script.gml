firingDelay = firingDelay - 1;
 
if (firingDelay < 0){
	
	firingDelay = firingDelayReset
	
	directionToFire = point_direction(x,y,player.x,player.y)
	
	if (x > player.x) {
		image_xscale = -1;	
	}
	else {
		image_xscale = 1;
	}	
	
	with (instance_create_layer(x,y,"bullets", bullet)) {
		speed = 7;
		direction = other.directionToFire;
		image_xscale = other.image_xscale;
	}
	
	
}

if (collision_line(x, y, player.x, player.y, wall, false , true)) canSee = false;
else canSee = true;

if ((distance_to_point(player.x,player.y) > seenRadius) || (!canSee)) {
	enemystates = enemystates.watch;	
}

collisions_Script();