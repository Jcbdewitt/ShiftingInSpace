enum states {
	normal,
	attack,
	intro
}
states = states.normal;
onSurface = false;
pound = false;
runOnce = true;
mySpeed = 5;
h_speed = 0;
v_speed = 0;
jumpStrength = 14;
oldX = 0;
oldY = 0;
hitboxTimer = 0;
hitboxTimerReset = 45;
attackDelay = 25;
attackDelayReset = attackDelay;
numOfCards = 0;
roomIn = 1;