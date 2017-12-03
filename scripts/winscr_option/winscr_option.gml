draw_text(X,Y,"General")
if !variable_instance_exists(id,"testch")
{
	checkbox_init()
	checkbox_create("Test",X,Y+30,c_white,img_widget_checkbox,0,0,0)
}
checkbox_draw_all()