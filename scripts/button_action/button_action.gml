/// @description Do action a button list
var dm,groupname;
var Dx,Dy,Dw,Dh,Dsc1,Dsc2,Dsc3,Dena

for(dm=0;dm<=_widget_button_idmax-1;dm++)
{
	Dena = ds_grid_get(_widget_button_state,1,dm)
	groupname =	ds_grid_get(_widget_button_state,5,dm)
	Dx =		ds_grid_get(_widget_button_location,1,dm)
	Dy =		ds_grid_get(_widget_button_location,2,dm)
	Dw =		ds_grid_get(_widget_button_location,3,dm)
	Dh =		ds_grid_get(_widget_button_location,4,dm)
	Dsc1 =		ds_grid_get(_widget_button_state,2,dm)
	Dsc2 =		ds_grid_get(_widget_button_state,3,dm)
	if mouse_area(Dx,Dy,Dx+Dw,Dy+Dh)
	{
		if mouse_check_button(mb_left)
		{
			if pressin[dm] = true
			{
				pressed[dm] = true
			}
		}
		else
		{
			pressin[dm] = true
		}
		if mouse_check_button_released(mb_left) and pressed[dm] = true
		{
			if (script_exists(Dsc1) and Dsc1 != "none") and Dena = true
			{
				script_execute(Dsc1)
				pressed[dm] = false
			}
			if script_exists(Dsc2) and Dena = false
			{
				script_execute(Dsc2)
				pressed[dm] = false
			}
		}
	}
	else
	{
		if mouse_check_button_pressed(mb_left)
		{
			pressin[dm] = false
		}
		pressed[dm] = false
	}
}