/// @description Draw a button list
var dm,groupname;
var Dimg,Dind,Dx,Dy,Dw,Dh,Dbdr,Dclr,Dalph ,Dtext,Dtextcolor,Dtextfnt,Dena

for(dm=0;dm<=_widget_button_idmax-1;dm++)
{
	groupname =	ds_grid_get(_widget_button_state,5,dm)
	Dimg =		ds_grid_get(_widget_button_style,1,groupname)
	Dind =		ds_grid_get(_widget_button_style,2,groupname)
	Dx =		ds_grid_get(_widget_button_location,1,dm)
	Dy =		ds_grid_get(_widget_button_location,2,dm)
	Dbdr =		ds_grid_get(_widget_button_style,3,groupname)
	Dw =		ds_grid_get(_widget_button_location,3,dm)
	Dh =		ds_grid_get(_widget_button_location,4,dm)
	Dclr =		ds_grid_get(_widget_button_style,4,groupname)
	Dalph =		1
	Dtext =		ds_grid_get(_widget_button_state,6,dm)
	Dtextcolor =ds_grid_get(_widget_button_style,5,groupname)
	Dtextfnt =	ds_grid_get(_widget_button_style,6,groupname)
	Dena =		ds_grid_get(_widget_button_state,1,dm)
	draw_box(Dimg,Dind+(pressed[dm]*Dena)+not(Dena),Dx,Dy,Dbdr,Dw,Dh,Dclr,Dalph)
	draw_set_font(Dtextfnt)
	draw_set_color(Dtextcolor)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_text((Dx+(Dw/2)),(Dy+(Dh/2))+(pressed[dm]*Dena)+not(Dena),Dtext)
}