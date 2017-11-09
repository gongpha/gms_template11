/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_set_font(fnt_small_deb)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
var xv = camera_get_view_x(view_camera[0])
var yv = camera_get_view_y(view_camera[0])
draw_text(xv,yv+30,"x_view = "+string(camera_get_view_x(view_camera[0]))+"\ny_view = "+string(camera_get_view_y(view_camera[0]))+"\nx_port = "+string(view_xport[0])+"\ny_port = "+string(view_yport[0])+"\nw_port = "+string(view_wport[0])+"\nh_port = "+string(view_hport[0]))
if !variable_global_exists("playerID") 
{
	global.playerID = noone
}
if global.playerID != noone
{
	draw_sprite(global.playerID.sprite_index,global.playerID.image_index,xv+view_wport[0]-(global.playerID.sprite_width/2),yv+(global.playerID.sprite_height/2))
}