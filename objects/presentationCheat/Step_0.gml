if (keyboard_check_pressed(ord("U"))) room_goto(0);

if (keyboard_check_pressed(ord("I"))) room_goto(1);	

if (keyboard_check_pressed(ord("O"))) room_goto(2);

if (keyboard_check_pressed(ord("P"))) room_goto(3);

if (keyboard_check_pressed(ord("J"))) room_goto(4);

if (keyboard_check_pressed(ord("K"))) room_goto(5);

if (keyboard_check_pressed(ord("L"))) room_goto(6);

if (keyboard_check_pressed(ord("M"))) door.open = true;

if ((keyboard_check_pressed(ord("N"))) && instance_exists(button)) button.pressed = true;
