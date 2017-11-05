/// @description Set Transform of Button
/// @param {real} id ID of Button Group
/// @param {real} image
/// @param {real} imageindex
/// @param {real} border
/// @param {real} imagecolor
/// @param {real} textcolor
/// @param {real} textfont
var image,imageindex,border,imagecolor,textcolor,textfont,ld,arg,res

ld = argument0
image = argument1
imageindex = argument2
border = argument3
imagecolor = argument4
textcolor = argument5
textfont = argument6

for(arg=1;arg<=6;arg++)
{
	if argument[arg] = "def"
	{
		if ds_grid_get(_widget_button_style,arg,ld) = undefined
		{
			res[arg] = "none"
		}
		res[arg] = ds_grid_get(_widget_button_style,arg,ld)
	}else{res[arg] = argument[arg]}
	ds_grid_set(_widget_button_style,arg,ld,res[arg])
}