/// @description Create a Button Group Data
/// @param {string} groupname Group Name
var kv,km
for(km=0;km<=_widget_button_idmax;km++)
{
	for(kv=0;kv<=ds_list_size(_widget_button_namelist);kv++)
	{
		if argument0 = ds_list_find_value(_widget_button_namelist,kv)
		{
			show_debug_message("ERROR : (MAKEGROUP) Name is already \""+string(argument0)+"\".")
			exit;
		}
	}
}

var Mw = ds_grid_width(_widget_button_style)
ds_grid_resize(_widget_button_style,Mw,Mw+1)
ds_grid_add(_widget_button_style,0,_widget_button_groupmax,argument0)
ds_list_add(_widget_button_namelist,argument0)
_widget_button_groupmax += 1
variable_instance_set(id,argument0,ds_list_create())