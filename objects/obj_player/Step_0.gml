 // Player Movement
key_right = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr);
key_left = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl);
key_jump = keyboard_check(vk_up) || gamepad_button_check(0, gp_face1)

var move = key_right - key_left;

if move != 0 {
	hspeed_ += move * acceleration_;
	hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
} else {
	hspeed_ = lerp(hspeed_, 0, friction_);
}

// Jump
if key_jump {
	if jump_time_ < jump_max_time_ {
		vspeed_ = jump_speed_;
		++jump_time_;
	}
} else if place_meeting(x, y + 1, obj_wall) {
	jump_time_ = 0;
} else {
	jump_time_ = jump_max_time_;
}

// Gravity
vspeed_ += gravity_;

//show_debug_message("hspeed_=" + string(hspeed_));
//show_debug_message("vspeed_=" + string(vspeed_));

if vspeed_ == 0 && place_meeting(x + hspeed_, y, obj_wall) {
	while !place_meeting(x + sign(hspeed_), y, obj_wall) {
		x += sign(hspeed_);
	}
	hspeed_ = 0;
}
x += hspeed_;
//show_debug_message("x=" + string(x));

if !place_meeting(x, y, obj_wall) && vspeed_ > 0 {
    if place_meeting(x, y + vspeed_, obj_wall) {
	    while !place_meeting(x, y + sign(vspeed_), obj_wall) {
		    y += sign(vspeed_);
	    }
	    //if vspeed_ < 0 {
	    //	jump_time_ = jump_max_time_;  // End jump loop
	    //}
	    vspeed_ = 0;
    }
}
y += vspeed_;
//show_debug_message("y=" + string(y));
