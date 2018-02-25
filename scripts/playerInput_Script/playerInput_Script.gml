key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(ord("S"));
key_jump = (keyboard_check_pressed(vk_space)) || (gamepad_button_check_pressed(0,gp_face1));
key_abilityUse1 = (keyboard_check_pressed(ord("E"))) || (gamepad_button_check_pressed(0,gp_shoulderrb));
key_abilityUse2 = (keyboard_check_pressed(ord("Q"))) || (gamepad_button_check_pressed(0,gp_shoulderlb));

if (key_left) || (key_right){
	controller = 0;
}
//Checks deadzone on analog stick
if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2) {
	//Replaces keyboard buttons for analog stick
	key_left = abs(min(gamepad_axis_value (0,gp_axislh),0));
	key_right = max(gamepad_axis_value(0,gp_axislh),0);
	controller = 1;
}
if (abs(gamepad_axis_value(0,gp_axislv)) > 0.2) {
	key_down = abs(min(gamepad_axis_value(0,gp_axislv),0));	
	key_up = max(gamepad_axis_value(0,gp_axislv), 0);
}

