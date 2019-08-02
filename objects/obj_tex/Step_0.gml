if !draw_end_ {
	return;
}

key_attack = keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(0, gp_face3) || gamepad_button_check_pressed(0, gp_face1);;

if key_attack {
	instance_activate_all();
	instance_destroy();
	instance_destroy(obj_door)
}