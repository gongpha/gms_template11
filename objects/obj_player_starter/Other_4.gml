/// @description Insert description here
// You can write your code in this editor

switch(global._game_core_social)
{
	case GAME_SINGLEPLAYER:
		switch(global._game_core_gamemode)
		{
			case GAMEMODE_PLATFORM:
				if !instance_exists(obj_player_character_platform)
				{
					global._game_core_sp_player = instance_create_depth(x+(global._game_object_width/2),y+(global._game_object_height/2),global._game_depth_player,obj_player_character_platform)
				}
			break;
		}
	break;
}