if !invincible_ {
	if health_ > 0 {
		health_ -= other.attack_power_;
		
		if health_ == 0 {
			obj_game.player_death_x_ = x;
			obj_game.player_death_y_ = y;
			if obj_game.life_ > 0 {
				obj_game.alarm[0] = game_get_speed(gamespeed_fps) * 2;
			} else {
				room_goto(rm_game_over)
			}
			instance_destroy();
		} else {
			invincible_ = true;
			alarm_set(0, game_get_speed(gamespeed_fps));
		}
	}
}