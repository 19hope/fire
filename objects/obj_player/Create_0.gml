hspeed_ = 0;
max_hspeed_ = 3;
vspeed_ = 0;
gravity_ = 0.8;
acceleration_ = 1.5;
friction_ = .6;
jump_speed_ = -6.2;
jump_time_ = 0;
jump_max_time_ = 15;
key_jump_prev_frame_state_ = 0;
attack_interval_ = 20;
attack_next_frame_ = 0;

attack_power_ = 10;
health_ = 30;
invincible_ = true;
 
alarm_set(0, game_get_speed(gamespeed_fps));

state_ = "RIGHT";
left_or_right_ = "RIGHT"