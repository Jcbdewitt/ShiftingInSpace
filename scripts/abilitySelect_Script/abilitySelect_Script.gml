if (key_switchRight) {
	abilitySelect++;
	if (abilitySelect > numOfAbilites - 1) {
		abilitySelect = 0;
	}
}
if (key_switchLeft) {
	abilitySelect--;
	if (abilitySelect < 0) {
		abilitySelect = 1
	}
}