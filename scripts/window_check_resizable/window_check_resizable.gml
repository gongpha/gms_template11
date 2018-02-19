/// @description Check a window can resize for all directions
/// @param {string} windowobjid Window ID

if variable_instance_exists(argument0,"minW")
{
	return 0;
}

with(argument0)
{
	return not(minw = maxw and minh = maxh);
}