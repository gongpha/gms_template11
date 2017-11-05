var www = 500
if !variable_global_exists("gmmenu")
{
	global.gmmenu = noone
}
if !instance_exists(global.gmmenu)
{
	global.gmmenu = window_create("choose","CHOOSE GAMEMODES",winscr_gamemodechoose,(view_xview[0]+(view_wview[0]/2))-(www/2),(view_yview[0]+(view_hview[0]/2))-65,www,130,www,130,www,130)
}