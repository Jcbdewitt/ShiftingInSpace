turnTimer = turnTimer - 1;

if (turnTimer < 0) {
	turnTimer = turnTimerReset;
	image_xscale = sign(image_xscale) * -1;
}

if (collision_line(x, y, player.x, player.y, wall, false , true)) canSee = false;
else canSee = true;

if (distance_to_point(player.x,player.y) < radius) insideRadius = true;
else insideRadius = false;

if(canSee && insideRadius){  
    enemystates = enemystates.attack;
}  

collisions_Script();