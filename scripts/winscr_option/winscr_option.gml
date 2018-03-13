draw_text(X,Y+5,"General")
if !variable_instance_exists(id,"testch")
{
	checkbox_init()
	testch = checkbox_create(false,"?def?",X,Y+30,"Fullscreen",32,32,mmn_cb_fullscreen)
	playch = checkbox_create(false,"?def?",X,Y+74,"CLICK ME!!!",32,32,"?none?")
}
checkbox_set_location(testch,X,Y+30,"?def?","?def?")
checkbox_set_location(playch,X,Y+74,"?def?","?def?")
checkbox_draw_all()
checkbox_action()