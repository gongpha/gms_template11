/// @description Draw a button list
var dm;
var Dimg,Dind,Dx,Dy,Dw,Dh,Dbdr,Dclr,Dalph ,Dtext,Dtextcolor,Dtextfnt,Dena,Dstyle
for(dm=0;dm<=_widget_button_idmax-1;dm++)
{
	_X =		ds_grid_get(_widget_button_location,1,dm)
	_Y =		ds_grid_get(_widget_button_location,2,dm)
	_W =		ds_grid_get(_widget_button_location,3,dm)
	_H =		ds_grid_get(_widget_button_location,4,dm)
	_TEXT =		ds_grid_get(_widget_button_state,6,dm)
	_ENABLED =	ds_grid_get(_widget_button_state,1,dm)
	_PRESS =	pressed[dm]
	
	Dstyle =	ds_grid_get(_widget_button_state,5,dm)

	script_execute(Dstyle)
}