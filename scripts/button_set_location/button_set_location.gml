/// button_set_location(id,x,y,w,h)
/// @description Set State of Button
/// @param {real} id ID of Button
/// @param {real} x
/// @param {real} y
/// @param {real} w
/// @param {real} h
var xx,yy,ww,hh,ld,xxres,yyres,wwres,hhres

ld = variable_instance_get(id,argument0)
xx = argument1
yy = argument2
ww = argument3
hh = argument4

if xx = "x" or xx = "def"
{
	xxres = ds_grid_get(_widget_button_location,1,ld)
}else{xxres = xx}
if yy = "y" or yy = "def"
{
	yyres = ds_grid_get(_widget_button_location,2,ld)
}else{yyres = yy}
if ww = "w" or ww = "def"
{
	wwres = ds_grid_get(_widget_button_location,3,ld)
}else{wwres = ww}
if hh = "h" or hh = "def"
{
	hhres = ds_grid_get(_widget_button_location,4,ld)
}else{hhres = hh}

//Finally, set all variable
ds_grid_set(_widget_button_location,1,ld,xxres)
ds_grid_set(_widget_button_location,2,ld,yyres)
ds_grid_set(_widget_button_location,3,ld,wwres)
ds_grid_set(_widget_button_location,4,ld,hhres)