if variable_instance_exists(id,"gui")
{
	script_execute(gui)
}
if variable_instance_exists(id,"_widget_button_inited")
{
	button_draw_all()
	button_action()
}