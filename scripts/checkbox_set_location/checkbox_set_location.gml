/// checkbox_set_location(id,x,y)
/// @description Set Location of the checkbox
/// @param {real} id ID of checkbox
/// @param {real} x
/// @param {real} y
/// @param {real} w
/// @param {real} h
var ld,xx,yy,ww,hh,xxres,yyres,hhres,wwres;

ld = argument0
xx = argument1
yy = argument2
ww = argument3
hh = argument4

if xx = "x" or xx = "?def?"
{
	xxres = ds_grid_get(_widget_checkbox_state,3,ld)
}else{xxres = xx}

if yy = "y" or yy = "?def?"
{
	yyres = ds_grid_get(_widget_checkbox_state,4,ld)
}else{yyres = yy}
if ww = "w" or ww = "?def?"
{
	wwres = ds_grid_get(_widget_checkbox_state,5,ld)
}else{wwres = ww}
if hh = "h" or hh = "?def?"
{
	hhres = ds_grid_get(_widget_checkbox_state,6,ld)
}else{hhres = hh}


//Finally, set all variable
ds_grid_set(_widget_checkbox_state,3,ld,xxres)
ds_grid_set(_widget_checkbox_state,4,ld,yyres)
ds_grid_set(_widget_checkbox_state,5,ld,wwres)
ds_grid_set(_widget_checkbox_state,6,ld,hhres)