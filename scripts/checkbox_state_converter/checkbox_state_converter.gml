/// @description Checkbox :: Convert String States <-> Real States
/// @param {} state
if is_string(argument0)
{
	switch(argument0)
	{
		case "unchecked":
			return 0;
		break;
		case "checked":
			return 1;
		break;
		case "semichecked":
			return 2;
		break;
		default:
			return 0;
		break;
	}
}
else
{
	switch(argument0)
	{
		case 0:
			return "unchecked";
		break;
		case 1:
			return "checked";
		break;
		case 2:
			return "semichecked";
		break;
		default:
			return "unknown";
		break;
	}
}