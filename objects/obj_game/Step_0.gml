
if room == rm_story10 {
	room_goto(rm_game)
}

if room == rm_story13 {
	// restart
	rm_game.life_ = 3;
	room_goto(rm_game);
}

if room != rm_game {
	if keyboard_check_pressed(vk_anykey) || 
	   gamepad_button_check_pressed(0, gp_face3) ||
	   gamepad_button_check_pressed(0, gp_face1) {
		room_goto_next()
	}
}