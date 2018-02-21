enum enemystates {
	watch,
	patrol,
	attack
}
enemystates = enemystates.watch;
canSee = false;
insideRadius = false;
h_speed = 0;
v_speed = 0;
//view radius
radius = 180;
seenRadius = 360;
turnTimer = 90;
turnTimerReset = 90;
firingDelay = 45;
firingDelayReset = firingDelay;
directionToFire = 0;