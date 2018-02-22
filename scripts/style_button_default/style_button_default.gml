//--------------------BUTTON STYLE-----------------------//


draw_box(img_widget_button,(_PRESS*_ENABLED)+not(_ENABLED),_X,_Y,16,_W,_H,c_white,1)
draw_set_font(fnt_button)
draw_set_color(c_black)
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_text((_X+(_W/2)),(_Y+(_H/2))+(_PRESS*_ENABLED)+not(_ENABLED),_TEXT)