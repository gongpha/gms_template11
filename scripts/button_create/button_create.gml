/// @description Create a Button Data
/// @param {real} buttongroup Group of Button
/// @param {string} buttonname

var buttongroup,km,kv

buttongroup = argument0
//Check if can't find a data structure
if !ds_exists(buttongroup,ds_type_list)
{
	show_debug_message("SEMIERROR : Can't found \""+string(buttongroup)+"\".")
	exit;
}
for(km=0;km<=_widget_button_idmax;km++)
{
	for(kv=0;kv<=ds_list_size(_widget_button_namelist);kv++)
	{
		if argument1 = ds_list_find_value(_widget_button_namelist,kv)
		{
			show_debug_message("ERROR : (MAKEBUTT) Name is already \""+string(argument1)+"\".")
			exit;
		}
	}
}
//Add this buttonid to storage
var Mw = ds_grid_width(_widget_button_style)
//Resize a button storage
ds_grid_resize(_widget_button_location,Mw,Mw+1)
//Add ID of this button to location storage 
ds_grid_add(_widget_button_location,0,_widget_button_idmax,argument1)
//Add ID of this button to button storage
ds_list_add(buttongroup,argument1)
Mw = ds_grid_width(_widget_button_state)
ds_grid_resize(_widget_button_state,Mw,Mw+1)
//Add ID of this button to location storage 
ds_grid_add(_widget_button_state,0,_widget_button_idmax,argument1)
ds_grid_set(_widget_button_state,5,_widget_button_idmax,buttongroup)
ds_list_add(_widget_button_namelist,argument1)
//Add Count of Button in this instance
_widget_button_idmax += 1
variable_instance_set(id,argument1,_widget_button_idmax-1)

pressed[_widget_button_idmax-1] = false
pressin[_widget_button_idmax-1] = false