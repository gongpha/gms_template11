#macro EARLY_ACRESS true
#macro DEVELOPER_MODE true
#macro USERNAME "Someone"
#macro FULLSCREEN false
#macro SDK 11
#macro AUTHOR "gongpha"

#macro GAME_SINGLEPLAYER 0x10
#macro GAME_MULTIPLAYER 0x11
#macro GAMEMODE_PLATFORM 0x10
#macro GAMEMODE_TOPVIEW 0x11

//PLAYER
#macro GAME_PLAYER_STATE_IDLE 0x10
#macro GAME_PLAYER_STATE_WALK 0x11
#macro GAME_PLAYER_STATE_RUNNING 0x12
#macro GAME_PLAYER_STATE_AIR 0x13
#macro GAME_PLAYER_STATE_JUMPING 0x14

#macro COLOR_INF_POSITIVE color_converter($00AA80)
#macro COLOR_INF_NEGATIVE color_converter($DD0000)
//Global :: Game
global._game_core_social = GAME_SINGLEPLAYER
global._game_core_gamemode = ""
global._game_core_sp_player = noone
global._game_core_mp_player = noone
global._game_object_width = 64
global._game_object_height = 64
//Global :: Depth
global._game_depth_GUI_super = -132132
global._game_depth_GUI_normal = -132
global._game_depth_player = -13
global._game_depth_geometry = -10
global._game_depth_background1 = 1
global._game_depth_background2 = 2
global._game_depth_background3 = 3
global._game_depth_background4 = 4
global._game_depth_background5 = 5
global._game_depth_background6 = 6
global._game_depth_background7 = 7
global._game_depth_background8 = 8
global._game_depth_background9 = 9
global._game_depth_background10 = 10

//Character :: Player
character_body_scheme()
//Global :: Console
view_set_wport(view_camera[0],800)
view_set_hport(view_camera[0],450)