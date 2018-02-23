enum player2states {
	alone,
	intro,
	normal,
	attack,
	carrying
}
player2states = player2states.normal;
crateid = 0;
onSurface = false;
pound = false;
runOnce = true;
grabCrate = false;
mySpeed = 5;
h_speed = 0;
v_speed = 0;
jumpStrength = 14;
abilitySelect = 0; 
oldX = 0;
oldY = 0;
hitboxTimer = 0;
hitboxTimerReset = 45;
attackDelay = 25;
attackDelayReset = attackDelay;
numOfCards = 0;
numOfAbilites = 2;
roomIn = 1;