switch (enemystates) {
	case enemystates.watch:
		enemyWatch_Script();
		break;
	case enemystates.patrol:
		enemyPatrol_Script();
		break;
	case enemystates.attack:
		enemyAttack_Script();
		break;
}


x = x + h_speed;
y = y + v_speed;

v_speed += global.grav;

image_yscale = player.image_yscale;