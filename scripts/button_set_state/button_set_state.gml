/// @description Set State of Button
/// @param {real} id ID of Button Group
/// @param {real} enable
/// @param {real} execute
/// @param {real} disabledexecute
/// @param {real} altexecute
/// @param {real} style
/// @param {string} text
var enabled,exe,exe2,exe3,ld,style,text

ld = variable_instance_get(id,argument0)
enabled = argument1
exe = argument2
exe2 = argument3
exe3 = argument4
style = argument5
text = argument6

for(arg=1;arg<=6;arg++)
{
	if argument[arg] = "?def?"
	{
		res[arg] = _widget_button_default[arg]
	}else{res[arg] = argument[arg]}
	ds_grid_set(_widget_button_state,arg,ld,res[arg])
}