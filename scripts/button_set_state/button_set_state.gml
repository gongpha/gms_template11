/// @description Set State of Button
/// @param {real} id ID of Button Group
/// @param {real} enable
/// @param {real} execute
/// @param {real} disabledexecute
/// @param {real} altexecute
/// @param {real} group
/// @param {string} text
var enabled,exe,exe2,exe3,ld,group,text

ld = variable_instance_get(id,argument0)
enabled = argument1
exe = argument2
exe2 = argument3
exe3 = argument4
group = argument5
text = argument6

for(arg=1;arg<=6;arg++)
{
	if argument[arg] = "def"
	{
		if ds_grid_get(_widget_button_state,arg,ld) = undefined
		{
			res[arg] = "none"
		}
		res[arg] = ds_grid_get(_widget_button_state,arg,ld)
	}else{res[arg] = argument[arg]}
	ds_grid_set(_widget_button_state,arg,ld,res[arg])
}