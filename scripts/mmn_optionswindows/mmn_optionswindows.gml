if !variable_global_exists("optionsmenu")
{
	global.optionsmenu = noone
}
if !instance_exists(global.optionsmenu)
{
	global.optionsmenu = window_create("OPTIONS","Options",winscr_option,"def","def","def","def","def","def","def","def",)
}