/// @description Draw all checkbox
var dm;
var Dimg,Dind,Dx,Dy,Dclr,Dalph ,Dtext,Dcolor,Dcheck,DinxU,DinxC,DinxUN,Dshad
if !variable_instance_get(id,"_widget_checkbox_state")
{
	show_debug_message("SEMIERROR: No checkbox data")
	exit;
}
if _widget_checkbox_count > 0
{
	for(dm=0;dm<=_widget_checkbox_count-1;dm++)
	{
		_CHECK	= ds_grid_get(_widget_checkbox_state,1,dm)
		_STYLE	= ds_grid_get(_widget_checkbox_state,2,dm)
		_X		= ds_grid_get(_widget_checkbox_state,3,dm)
		_Y		= ds_grid_get(_widget_checkbox_state,4,dm)
		_TEXT	= ds_grid_get(_widget_checkbox_state,5,dm)
		_W		= ds_grid_get(_widget_checkbox_state,6,dm)
		_H		= ds_grid_get(_widget_checkbox_state,7,dm)
		script_execute(_STYLE)
	}
}