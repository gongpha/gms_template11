/// @description Draw all checkbox
var dm;
var Dimg,Dind,Dx,Dy,Dclr,Dalph ,Dtext,Dcolor,Dcheck,DinxU,DinxC,DinxUN,Dshad
for(dm=0;dm<=_widget_button_idmax-1;dm++)
{
	Dcheck = ds_grid_get(_widget_checkbox_state,1,dm)
	Dimg = ds_grid_get(_widget_checkbox_state,2,dm)
	Dshad = ds_grid_get(_widget_checkbox_state,3,dm)
	Dtext = ds_grid_get(_widget_checkbox_state,4,dm)
	Dcolor = ds_grid_get(_widget_checkbox_state,5,dm)
	Dalph = ds_grid_get(_widget_checkbox_state,6,dm)
	DinxU = ds_grid_get(_widget_checkbox_state,7,dm)
	DinxC = ds_grid_get(_widget_checkbox_state,8,dm)
	DinxUN = ds_grid_get(_widget_checkbox_state,9,dm)
	Dx = ds_grid_get(_widget_checkbox_state,10,dm)
	Dy = ds_grid_get(_widget_checkbox_state,11,dm)
	draw_sprite(Dimg,checkbox_get_index_state(Dcheck,DinxU,DinxC,DinxUN),Dx,Dy)
	draw_set_color(Dcolor)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
}