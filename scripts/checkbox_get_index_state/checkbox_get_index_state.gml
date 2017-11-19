/// @description Checkbox INdex state
/// @param {string} state
/// @param {real} unchecked
/// @param {real} checked
/// @param {real} semi-checked
switch(argument0)
{
	case "unchecked":
		return argument1;
	break;
	case "checked":
		return argument2;
	break;
	case "semichecked":
		return argument3;
	break;
	default:
		return argument1;
	break;
}