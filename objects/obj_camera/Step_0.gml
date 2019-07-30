if not instance_exists(target_) exit;
//show_debug_message("camera x=" + string(x))
//show_debug_message("camera y=" + string(y))
//show_debug_message("player x=" + string(target_.x))
//show_debug_message("player y=" + string(target_.y))
x = lerp(x, target_.x, 0.5);
y = lerp(y, target_.y, 0.5);
//show_debug_message("camera x'=" + string(x))
//show_debug_message("camera y'=" + string(y))
camera_set_view_pos(view_camera[0], x-width_/2, 0);