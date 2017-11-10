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
if global._game_core_social = GAME_SINGLEPLAYER
{
	var playerid = global._game_core_sp_player
}
else
{
	var playerid = global._game_core_mp_player
}
draw_text(0,30,"x_view = "+string(camera_get_view_x(view_camera[0]))+"\ny_view = "+string(camera_get_view_y(view_camera[0]))+"\nx_port = "+string(view_xport[0])+"\ny_port = "+string(view_yport[0])+"\nw_port = "+string(view_wport[0])+"\nh_port = "+string(view_hport[0]))
if playerid != noone
{
	draw_sprite_ext(playerid.sprite_index,playerid.image_index,yourx-(playerid.sprite_width/2),(playerid.sprite_height/2),playerid.facing,1,0,c_white,1)
	draw_set_halign(fa_right)
	draw_text(yourx-(playerid.sprite_width/2),(playerid.sprite_height)+10,"name = "+string(playerid.charname)+"\ndepth = "+string(playerid.depth)+"\ngravity = "+string(playerid.gravity)+"\nx = "+string(playerid.x)+"\ny = "+string(playerid.y)+"\nvspeed = "+string(playerid.vspeed)+"\nhspeed = "+string(playerid.hspeed)+"\nimage_speed = "+string(playerid.image_speed)+"\nimage_index = "+string(playerid.image_index)+"\n\nCharacter Bound X = "+string(playerid.player_body_width)+"\nCharacter Bound Y = "+string(playerid.player_body_height)+"\nCharacter Ratio = "+playerid.player_body_ratio)
}