/// @description Init a Button system

//This script will create other ds_grid
if !variable_instance_exists(id,"_widget_button_inited")
{
	_widget_button_inited = true
	_widget_button_idmax = 0
	_widget_button_location = ds_grid_create(5,1)
	_widget_button_state = ds_grid_create(7,1)
	_widget_button_namelist = ds_list_create()
	button_default_prefence();
}
