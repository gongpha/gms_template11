draw_text(X,Y+5,"General")
if !variable_instance_exists(id,"testch")
{
	checkbox_init()
	testch = checkbox_create(false,"?def?",X,Y+30,"Fullscreen",32,32,mmn_cb_fullscreen)
}
checkbox_set_location(testch,X,Y+30,"?def?","?def?")
checkbox_draw_all()
checkbox_action()