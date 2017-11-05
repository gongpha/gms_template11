key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_down = keyboard_check(ord("S"))
key_jump = keyboard_check(ord("W"))

if key_left
{
	vspeed -= 5
}

view_update_toplayer()