/// @description Create a Checkbox data
/// @param {string} text

if !variable_global_exists("_widget_checkbox_count")
{
	show_debug_message("SEMIERROR : Checkbox data not initial yet.")
	exit;
}
ds_grid_add(global._w, 5, 5, 6);