///@desc Main GUI at Main Menu
//Local Variables
var logoX,LogoY,ButtonY
logoX = view_xview[0]+30 
logoY = view_yview[0]+70
buttonY = view_yview[0]+200
//Game Logo
//Template :: draw_sprite(gLogo,gLogoInd,logoX,logoY)
draw_set_color(c_white)
draw_set_font(fnt_logo)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(logoX,logoY,"SDK 11 template")

//For Create widgets ONLY
if event_type = 14
{
	//Buttons newgame
	button_group_create("bttn_maingroup")
	button_create(bttn_maingroup,"bttn_play")
	button_set_location("bttn_play",30,buttonY,190,30)
	button_set_style(bttn_maingroup,img_button,0,16,c_white,c_black,fnt_button)
	button_set_state("bttn_play",true,mmn_play,"none","none","def","NEW GAME")
	
	//Buttons congame
	button_group_create("bttn_maingroup")
	button_create(bttn_maingroup,"bttn_play2")
	button_set_location("bttn_play2",30,buttonY+40,190,30)
	button_set_style(bttn_maingroup,img_button,0,16,c_white,c_black,fnt_button)
	button_set_state("bttn_play2",true,mmn_play,"none","none","def","LOAD GAME")
	
	//Buttons options
	button_group_create("bttn_maingroup")
	button_create(bttn_maingroup,"bttn_play3")
	button_set_location("bttn_play3",30,buttonY+80,190,30)
	button_set_style(bttn_maingroup,img_button,0,16,c_white,c_black,fnt_button)
	button_set_state("bttn_play3",true,mmn_optionswindows,"none","none","def","OPTIONS")
}


