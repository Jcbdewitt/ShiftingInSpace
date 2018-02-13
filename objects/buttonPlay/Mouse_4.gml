audio_stop_all();
instance_create_layer(1024/2, 768/2, "Instances", countdown);
visible = 0;
countdown.image_speed = 1;
audio_play_sound(countdownMusic, 0, false);

clicked = true;