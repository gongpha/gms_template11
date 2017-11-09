key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_down = keyboard_check(ord("S"))
key_jump = keyboard_check_pressed(vk_space)


move = (key_right - key_left)*2
x += move



camera_set_view_pos(view_camera[0],clamp(x - (view_wport[0] / 2),view_xport[0],room_width - camera_get_view_width(view_camera[0])),clamp(y - (view_hport[0] / 2),view_yport[0],room_height-camera_get_view_height(view_camera[0])))
//camera_set_view_pos(view_camera[0],clamp( camera_get_view_x(view_camera[0]), 0, room_width - camera_get_view_width(view_camera[0]) ),clamp( camera_get_view_y(view_camera[0]), 0, room_height - camera_get_view_height(view_camera[0]) ))

if key_right
{
	facing = 1
	image_speed = 1
}


if key_left
{
	facing = -1
	image_speed = 1
}



if key_jump and !place_free(x,y+1)
{
	vspeed = -8
}
if vspeed = 11
{
	vspeed = 11
}
if place_free(x,y+1)
{
	gravity = 0.5
}
else
{
	gravity = 0
}