button_init()
if !variable_instance_exists(id,"bttn_platform")
{
	
	button_group_create("bttn_main")
	button_create(bttn_main,"bttn_platform")
	button_set_style(bttn_main,img_widget_button,0,16,c_white,c_black,fnt_button)
	button_set_state("bttn_platform",true,mmn_goplatform,"none","none","def","PLATFORM")
}
button_set_location("bttn_platform",X,Y,190,30)
button_draw_all()
button_action()
