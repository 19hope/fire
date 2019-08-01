// Gravity
vspeed_ += gravity_;

//show_debug_message("hspeed_=" + string(hspeed_));
//show_debug_message("vspeed_=" + string(vspeed_));

if place_meeting(x + hspeed_, y, obj_edge) {
	while !place_meeting(x + sign(hspeed_), y, obj_edge) {
		x += sign(hspeed_);
	}
	hspeed_ = -hspeed_;
} else {
	x += hspeed_;
}

if place_meeting(x + hspeed_, y, obj_transparent_wall) {
	while !place_meeting(x + sign(hspeed_), y, obj_transparent_wall) {
		x += sign(hspeed_);
	}
	hspeed_ = -hspeed_;
} else {
	x += hspeed_;
}

//show_debug_message("x=" + string(x));

if vspeed_ > 0 {
	var temp_vspeed = 0;
	while temp_vspeed < vspeed_ {
		if !place_meeting(x, y + temp_vspeed, obj_wall) && place_meeting(x, y + temp_vspeed + 1, obj_wall) {
			y += temp_vspeed;
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
	vspeed_ = 0;
}

y += vspeed_;
//show_debug_message("y=" + string(y));