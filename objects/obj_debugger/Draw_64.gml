/// @description Debug
// You can write your code in this editor
draw_set_color(c_black)
draw_set_font(fnt_small_deb)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
var xv = camera_get_view_x(view_camera[0])
var yv = camera_get_view_y(view_camera[0])
var yourx = display_get_gui_width()
var youry = display_get_gui_height()
draw_text(0,30,"x_view = "+string(camera_get_view_x(view_camera[0]))+"\ny_view = "+string(camera_get_view_y(view_camera[0]))+"\nx_port = "+string(view_xport[0])+"\ny_port = "+string(view_yport[0])+"\nw_port = "+string(view_wport[0])+"\nh_port = "+string(view_hport[0]))
if !variable_global_exists("playerID") 
{
	global.playerID = noone
}
if global.playerID != noone
{
	draw_sprite_ext(global.playerID.sprite_index,global.playerID.image_index,yourx-(global.playerID.sprite_width/2),(global.playerID.sprite_height/2),global.playerID.facing,1,0,c_white,1)
	draw_set_halign(fa_right)
	draw_text(yourx-(global.playerID.sprite_width/2),(global.playerID.sprite_height)+10,"name = "+string(charname)+"\ndepth = "+string(global.playerID.depth)+"\ngravity = "+string(global.playerID.gravity)+"\nx = "+string(global.playerID.x)+"\ny = "+string(global.playerID.y)+"\nvspeed = "+string(global.playerID.vspeed)+"\nhspeed = "+string(global.playerID.hspeed)+"\nimage_speed = "+string(global.playerID.image_speed)+"\nimage_index = "+string(global.playerID.image_index)+"\n\nCharacter Bound X = "+string(global.playerID.player_body_width)+"\nCharacter Bound Y = "+string(global.playerID.player_body_height)+"\nCharacter Ratio = "+global.playerID.player_body_ratio)
}