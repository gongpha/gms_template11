key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_down = keyboard_check(ord("S"))
key_jump = keyboard_check(ord("W"))


move = (key_right - key_left)*8
x += move

camera_set_view_pos(view_camera[0],clamp(x - (view_wport[0] / 2),view_xport[0],view_wport[0]),clamp(y - (view_hport[0] / 2),view_yport[0],view_hport[0]))

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
