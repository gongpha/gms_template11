/// @description Create a Button Data
/// @param {string} name Name
/// @param {string} caption Caption
/// @param {real} content Content (script)
/// @param {real} x X = 30
/// @param {real} y Y = 30
/// @param {real} w Width = 520
/// @param {real} h Height = 200
/// @param {real} minW Width = 200
/// @param {real} minH Height = 150
/// @param {real} maxW Width = none
/// @param {real} maxH Height = none
var ids,vx,vy,sa,d,www,hhh,xxx,yyy,minw,minh,maxw,maxh,ds;
vx = view_xview[0]
vy = view_yview[0]
d = argument3
d = argument4
d = argument5
d = argument6
d = argument7
d = argument8
d = argument9
d = argument10


if variable_global_exists("_window_inited")
{
	window_init()
}




ids = instance_create_depth(vx,vy,-100,obj_control_window)
ids.name = argument0
ids.caption = argument1
ids.content = argument2
global._window_map[? argument0] = ids
global._window_active = ids
global._window_actived = true

for(sa=3;sa<=10;sa++)
{
	if !is_string(argument[sa])
	{
		switch(sa)
		{
			case 3:
				ids.x = argument[sa];
			break;
			
			case 4:
				ids.y = argument[sa];
			break;
			
			case 5:
				ids.w = argument[sa];
			break;
			
			case 6:
				ids.h = argument[sa];
			break;
			
			case 7:
				ids.minw = argument[sa];
			break;
			
			case 8:
				ids.minh = argument[sa];
			break;
			
			case 9:
				ids.maxw = argument[sa];
			break;
			
			case 10:
				ids.maxh = argument[sa];
			break;
			
		}
	}
	else
	{
		switch(sa)
		{
			case 3:
				ids.x = 30;
			break;
			
			case 4:
				ids.y = 30;
			break;
			
			case 5:
				ids.w = 520;
			break;
			
			case 6:
				ids.h = 200;
			break;
			
			case 7:
				ids.minw = 400;
			break;
			
			case 8:
				ids.minh = 370;
			break;
			
			case 9:
				ids.maxw = "none";
			break;
			
			case 10:
				ids.maxh = "none";
			break;
			
		}
	}
}
ids.w = clamp(ids.w,ids.minw,ids.maxw)
ids.h = clamp(ids.h,ids.minh,ids.maxh)
ids.X = ids.x+15
ids.Y = ids.y+45
/*





for(sa=3;sa<=10;sa++)
{
	if !is_string(argument[sa])
	{
		switch(sa)
		{
			case 3:
				xxx = argument[sa];
			break;
			
			case 4:
				yyy = argument[sa];
			break;
			
			case 5:
				www = argument[sa];
			break;
			
			case 6:
				hhh = argument[sa];
			break;
			
			case 7:
				minw = argument[sa];
			break;
			
			case 8:
				minh = argument[sa];
			break;
			
			case 9:
				maxw = argument[sa];
			break;
			
			case 10:
				maxh = argument[sa];
			break;
			
		}
	}
	else
	{
		switch(sa)
		{
			case 3:
				xxx = 30;
			break;
			
			case 4:
				yyy = 30;
			break;
			
			case 5:
				www = 520;
			break;
			
			case 6:
				hhh = 200;
			break;
			
			case 7:
				minw = 400;
			break;
			
			case 8:
				minh = 370;
			break;
			
			case 9:
				maxw = "none";
			break;
			
			case 10:
				maxh = "none";
			break;
			
		}
	}
}
www = clamp(www,minw,maxw)
hhh = clamp(hhh,minh,maxh)
ds = ds_map_create()
ds[? "name"] = argument0
ds[? "caption"] = argument1
ds[? "content"] = argument2
ds[? "x"] = xxx
ds[? "y"] = yyy
ds[? "w"] = www
ds[? "h"] = hhh
ds[? "minw"] = minw
ds[? "minh"] = minh
ds[? "maxw"] = maxw
ds[? "maxh"] = maxh
ds[? "xcon"] = xxx+15
ds[? "ycon"] = yyy+45
global._window_info[? global._window_count] = ds_map_write(ds)
global._window_count += 1
*/
return ids



global._window_drag[| global._window_count] = false
var ds2 = ds_list_create()
ds_list_add(ds2,xxx)
ds_list_add(ds2,yyy)
global._window_oldlocal[| global._window_count] = ds_list_write(ds2)
ds_list_clear(ds2)
ds_list_add(ds2,0)
ds_list_add(ds2,0)
global._window_oldscale[| global._window_count] = ds_list_write(ds2)
ds_list_clear(ds2)
ds_list_add(ds2,"")
global._window_dragmode[| global._window_count] = ds_list_write(ds2)
return global._window_count-1