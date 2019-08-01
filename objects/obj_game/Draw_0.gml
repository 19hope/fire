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

	draw_text(camera_x + 2, camera_y + 2 + 40, string("INVICILE: ") + string(invincible));
} else if room = rm_game_over {
	draw_set_font(fnt_text);
	draw_text(0, 0, string("GAME OVER"));
}