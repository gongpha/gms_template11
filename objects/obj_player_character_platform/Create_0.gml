player_body_ratio = player_get_ratiosize(sprite_width,sprite_height)
player_body_width = sprite_width
player_body_height = sprite_height
player_state = GAME_PLAYER_STATE_IDLE
walk_speed = 2
facing = 1
image_speed = 0
camera_set_view_size(view_camera[0], view_wport[0], view_hport[0])
view_set_wport(view_camera[0],800)
view_set_hport(view_camera[0],450)
gravity = 0.5
gravity_direction = 270

charname = USERNAME