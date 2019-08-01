// Player Movement
key_right = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr);
key_left = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl);
key_down = keyboard_check(vk_down) || gamepad_button_check(0, gp_padd);
key_jump = keyboard_check(vk_up) || gamepad_button_check(0, gp_face1);
key_jump_released = keyboard_check_released(vk_up) || gamepad_button_check_released(0, gp_face1);
key_attack = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_face3);

var move = key_right - key_left;



if attack_next_frame_ <= 0 {
	if key_attack {
		attack_next_frame_ = attack_interval_;
		sprite_index = spr_player_attack
		if left_or_right_ == "LEFT" {
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}
	} else {
		sprite_index = spr_player_right
		if left_or_right_ == "LEFT" {
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}
	}
} else {
	--attack_next_frame_;
	move = 0;
}

if attack_next_frame_ <= 0 && move != 0 {
	if move > 0 {
		state_ = "RIGHT";
		left_or_right_ = "RIGHT"
		sprite_index = spr_player_right
		image_xscale = 1;
	} else {
		state_ = "LEFT";
		left_or_right_ = "LEFT"
		sprite_index = spr_player_right
		image_xscale = -1;
	}
	hspeed_ += move * acceleration_;
	hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
} else {
	hspeed_ = lerp(hspeed_, 0, friction_);
}

// Jump
if !key_down && key_jump {
	if jump_time_ < jump_max_time_ {
		vspeed_ = jump_speed_;
		++jump_time_; 
	}
}

if key_jump_released {
	jump_time_ = jump_max_time_;
}

// Can't jump when drop
if vspeed_ >= 0 {
	jump_time_ = jump_max_time_;
}

// Gravity
vspeed_ += gravity_;

//show_debug_message("hspeed_=" + string(hspeed_));
//show_debug_message("vspeed_=" + string(vspeed_));

if place_meeting(x + hspeed_, y, obj_edge) {
	while !place_meeting(x + sign(hspeed_), y, obj_edge) {
		x += sign(hspeed_);
	}
	hspeed_ = 0;
}
x += hspeed_;
//show_debug_message("x=" + string(x));



if vspeed_ > 0 {
	var temp_vspeed = 0;
	while temp_vspeed < vspeed_ {
		if key_down && !key_jump_prev_frame_state_ && key_jump && !place_meeting(x, y, obj_wall) && place_meeting(x, y + 1, obj_wall) {
			break;
		}
		if !place_meeting(x, y + temp_vspeed, obj_wall) && place_meeting(x, y + temp_vspeed + 1, obj_wall) {
			y += temp_vspeed;
			if !key_jump {
				jump_time_ = 0;
			}
			vspeed_ = 0;
			break;
		}
		++temp_vspeed;
	}
}


if place_meeting(x, y + vspeed_, obj_edge) {
	while !place_meeting(x, y + sign(vspeed_), obj_edge) {
		y += sign(vspeed_);
	}       
	if !key_jump {
	    jump_time_ = 0;
	} else {
		jump_time_ = jump_max_time_;
	}
	vspeed_ = 0;
}
y += vspeed_;
//show_debug_message("y=" + string(y));

key_jump_prev_frame_state_ = key_jump;