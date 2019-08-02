if room = rm_game {
	camera_x = camera_get_view_x(view_camera[0]);
	camera_y = camera_get_view_y(view_camera[0]);
	draw_set_font(fnt_text);
	var hp = 0;
	var invincible = 0;
	if instance_exists(obj_player) {
		hp = obj_player.health_;
		invincible = obj_player.invincible_;
	}
	draw_text(camera_x + 2, camera_y + 2, string("HP: ") + string(hp));

	draw_text(camera_x + 2, camera_y + 2 + 20, string("LIFE: ") + string(life_));

	//draw_text(camera_x + 2, camera_y + 2 + 40, string("INVICILE: ") + string(invincible));
	draw_text(camera_x + 2, camera_y + 2 + 40, string("KEYS: ") + string(key_num_));
} else if room = rm_game_win {
	draw_set_font(fnt_text);
	draw_set_halign(fa_center)
	draw_text(room_width/2, 40, string("Win!"));
	draw_text(room_width/2, 120, string("Thank you for playing our game."));
	draw_text(room_width/2, 200, string("Developers"));
	draw_set_halign(fa_left)
	draw_text(room_width/2 - 150, 240, string("Linlin Zhao"));
	draw_text(room_width/2 + 50, 240, string("Andy Fang"));
	draw_text(room_width/2 - 150, 280, string("Tommy Shen"));
	draw_text(room_width/2 + 50, 280, string("Kunpeng Xu"));
}