key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_down = keyboard_check(ord("S"))
key_jump = keyboard_check_pressed(vk_space)

key_h = (key_right - key_left)
if place_free(x,y+vspeed+1)
{
	gravity = 0.1
}
else
{
	gravity = 0
	vspeed = 0
}
if (player_state = GAME_PLAYER_STATE_AIR)
{
	move = (key_right - key_left)*((walk_speed/2)*place_free(x+((key_right - key_left)*walk_speed),y))
}
else
{
	move = (key_right - key_left)*(walk_speed*place_free(x+((key_right - key_left)*walk_speed),y))
}
x += move



camera_set_view_pos(view_camera[0],clamp(x - (view_wport[0] / 2),view_xport[0],room_width - camera_get_view_width(view_camera[0])),clamp(y - (view_hport[0] / 2),view_yport[0],room_height-camera_get_view_height(view_camera[0])))
//camera_set_view_pos(view_camera[0],clamp( camera_get_view_x(view_camera[0]), 0, room_width - camera_get_view_width(view_camera[0]) ),clamp( camera_get_view_y(view_camera[0]), 0, room_height - camera_get_view_height(view_camera[0]) ))

if key_h = 1
{
	player_state = GAME_PLAYER_STATE_WALK
	facing = 1
	image_speed = 1
}



if key_h = -1
{
	player_state = GAME_PLAYER_STATE_WALK
	facing = -1
	image_speed = 1
}
if key_h = 0
{
	player_state = GAME_PLAYER_STATE_IDLE
	image_speed = 0
	image_index = 0
}
if place_free(x,y+vspeed+1)
{
	sprite_index = img_player_plat_body_air
	player_state = GAME_PLAYER_STATE_AIR
	image_speed = 0
}
else
{
	sprite_index = img_player_plat_body_def
}
if key_jump and !place_free(x,y+1)
{
	vspeed = -5
}
if vspeed = 5
{
	vspeed = 5
}
