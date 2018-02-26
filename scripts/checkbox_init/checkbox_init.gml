if !variable_instance_exists(id,"_widget_checkbox_count")
{
	_widget_checkbox_state = ds_grid_create(9,1)
	_widget_checkbox_count = 0
	checkbox_default_prefence()
}