/// @desc
x = x + h_speed;
y = y + v_speed;

v_speed = v_speed + global.grav;

collisions();
