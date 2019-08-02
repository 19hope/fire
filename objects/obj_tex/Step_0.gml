key_attack = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_face3);

if key_attack {
	instance_activate_all();
	instance_destroy();
}