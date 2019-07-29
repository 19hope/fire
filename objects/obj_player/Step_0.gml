// Player Movement
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

if hinput != 0 {
	hspeed_ += hinput * acceleration_;
	hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
} else {
	hspeed_ = lerp(hspeed_, 0, friction_);
}

// Not in ground
if !place_meeting(x, y + 1, obj_wall) {
	vspeed_ += gravity_;
	show_debug_message("not in ground")
} else {
	if keyboard_check_pressed(vk_up) {
		vspeed_ = jump_height_;
		show_debug_message("up");
	} 
}

show_debug_message("hspeed_=" + string(hspeed_));
show_debug_message("vspeed_=" + string(vspeed_));

if place_meeting(x + hspeed_, y, obj_wall) {
	while !place_meeting(x + sign(hspeed_), y, obj_wall) {
		x += sign(hspeed_);
	}
	hspeed_ = 0;
}
x += hspeed_;
show_debug_message("x=" + string(x));


if place_meeting(x, y + vspeed_, obj_wall) {
	while !place_meeting(x, y + sign(vspeed_), obj_wall) {
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}
y += vspeed_;
show_debug_message("y=" + string(y));