if !instance_exists(obj_player) {
	life_ -= 1;
	instance_create_layer(player_death_x_, player_death_y_, "player", obj_player);
}