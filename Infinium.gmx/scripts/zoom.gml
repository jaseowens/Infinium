///zoom();

//If the mouse wheel is going up or down, adjust the TARGET zoom scale.
if mouse_wheel_up() target_zoom_scale -= zoom_scale_adjust;
if mouse_wheel_down() target_zoom_scale += zoom_scale_adjust;
 
//correct any out of bounds issues for the target zoom scale
if target_zoom_scale > max_zoom_scale target_zoom_scale = max_zoom_scale;
if target_zoom_scale < min_zoom_scale target_zoom_scale = min_zoom_scale;
 
//Move the current zoom scale closer to the target, if it is greater or less than
//var difference = current_zoom_scale - target_zoom_scale;
var adjustment = (zoom_speed * (target_zoom_scale - current_zoom_scale));
current_zoom_scale += adjustment;
last_adjustment = adjustment;
 
//Redundantly check against out of bounds for the current zoom.
if current_zoom_scale > max_zoom_scale current_zoom_scale = max_zoom_scale;
if current_zoom_scale < min_zoom_scale current_zoom_scale = min_zoom_scale;
 
//Set the width and height of the viewport accordingly
view_wview[0] = room_width * current_zoom_scale;
view_hview[0] = room_height * current_zoom_scale;
 
//set the view centered around the camera object
view_xview[0] = x - (view_wview[0] / 2);
view_yview[0] = y - (view_hview[0] / 2);
