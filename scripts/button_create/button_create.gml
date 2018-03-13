/// @description Create a Button Data
/// @param {string} buttonname

var km,kv


for(km=0;km<=_widget_button_idmax;km++)
{
	for(kv=0;kv<=ds_list_size(_widget_button_namelist);kv++)
	{
		if argument0 = ds_list_find_value(_widget_button_namelist,kv)
		{
			show_debug_message("ERROR : (MAKEBUTT) Name is already \""+string(argument0)+"\".")
			exit;
		}
	}
}
//Add this buttonid to storage
var Mw = ds_grid_width(_widget_button_location)
var Mh = ds_grid_height(_widget_button_location)
//Resize a button storage
ds_grid_resize(_widget_button_location,Mw,Mh+1)
//Add Button Name of this button to location storage
ds_grid_add(_widget_button_location,0,_widget_button_idmax,argument0)
Mw = ds_grid_width(_widget_button_state)
Mh = ds_grid_height(_widget_button_state)
//Resize a button storage
ds_grid_resize(_widget_button_state,Mw,Mh+1)
//Add Button Name of this button to state storage
ds_grid_add(_widget_button_state,0,_widget_button_idmax,argument0)
ds_list_add(_widget_button_namelist,argument0)
//Add Count of Button in this instance
_widget_button_idmax += 1


pressed[_widget_button_idmax-1] = false
pressin[_widget_button_idmax-1] = false

return _widget_button_idmax-1