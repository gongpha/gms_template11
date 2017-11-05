if argument0 = argument1
{
	return "1:1"
	exit;
}
ww = ceil(argument0 / argument1)
hh = ceil(argument1 / argument0)
return string(ww) + ":" + string(hh)
