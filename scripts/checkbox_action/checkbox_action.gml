/// @description Do action a checkbox list
var dm;
var Dch,Dstyle,Dx,Dy,Dtext,Dw,Dh,Dscr;

for(dm=0;dm<=_widget_checkbox_count-1;dm++)
{
	Dch =		ds_grid_get(_widget_checkbox_state,1,dm)
	Dstyle =	ds_grid_get(_widget_checkbox_state,2,dm)
	Dx =		ds_grid_get(_widget_checkbox_state,3,dm)
	Dy =		ds_grid_get(_widget_checkbox_state,4,dm)
	Dtext =		ds_grid_get(_widget_checkbox_state,5,dm)
	Dw =		ds_grid_get(_widget_checkbox_state,6,dm)
	Dh =		ds_grid_get(_widget_checkbox_state,7,dm)
	Dscr =		ds_grid_get(_widget_checkbox_state,8,dm)
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
			if Dch = true
			{
				_widget_checkbox_state[# 1, dm] = false
				if Dscr != "?none?"
				{
					script_execute(Dscr,false)
				}
				pressed[dm] = false
			}
			if Dch = false
			{
				_widget_checkbox_state[# 1, dm] = true
				if Dscr != "?none?"
				{
					script_execute(Dscr,true)
				}
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