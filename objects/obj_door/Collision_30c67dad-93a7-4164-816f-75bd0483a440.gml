if !instance_exists(obj_tex) && !obj_game.first_text_ {
	obj_game.first_text_ = true;
	instance_create_layer(x, y, "Instances", obj_tex)
}