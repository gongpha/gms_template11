/// @description Create a Checkbox data

/// @param {string} text
/// @param {real} x
/// @param {real} y
/// @param {real} color
/// @param {real} image
/// @param {real} unc_index
/// @param {real} c_index
/// @param {real} und_index

if !variable_global_exists("_widget_checkbox_count")
{
	show_debug_message("SEMIERROR : Checkbox data not initial yet.")
	exit;
}
ds_grid_add(global._widget_checkbox_state, 0, _widget_checkbox_count ,_widget_checkbox_count)
ds_grid_add(global._widget_checkbox_state, 1, _widget_checkbox_count ,false)
ds_grid_add(global._widget_checkbox_state, 2, _widget_checkbox_count ,argument4)
ds_grid_add(global._widget_checkbox_state, 3, _widget_checkbox_count ,0)
ds_grid_add(global._widget_checkbox_state, 4, _widget_checkbox_count ,0)
ds_grid_add(global._widget_checkbox_state, 5, _widget_checkbox_count ,argument3)
ds_grid_add(global._widget_checkbox_state, 6, _widget_checkbox_count ,1)
ds_grid_add(global._widget_checkbox_state, 7, _widget_checkbox_count ,5)
ds_grid_add(global._widget_checkbox_state, 8, _widget_checkbox_count ,6)
ds_grid_add(global._widget_checkbox_state, 9, _widget_checkbox_count ,7)
ds_grid_add(global._widget_checkbox_state, 10, _widget_checkbox_count ,1)
ds_grid_add(global._widget_checkbox_state, 11, _widget_checkbox_count ,2)

_widget_checkbox_count+=1
return _widget_checkbox_count-1