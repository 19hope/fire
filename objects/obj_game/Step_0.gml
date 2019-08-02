key_pressed_ = keyboard_check_pressed(vk_anykey) || 
	   gamepad_button_check_pressed(0, gp_face3) ||
	   gamepad_button_check_pressed(0, gp_face1);

if !key_pressed_ {
	return
}

if room == rm_game_win {
	return;
}

if room == rm_story16 {
	room_goto(rm_game_win)
	return
}

if room == rm_game_help_keyboard {
	room_goto(rm_game)
	return
}

if room == rm_story13 {
	// restart
	obj_game.life_ = 3;
	room_goto(rm_game);
	obj_game.alarm[0] = game_get_speed(gamespeed_fps) * 2;
	return
}

if room != rm_game {
	room_goto_next()
	return
}