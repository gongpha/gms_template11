/// @description Convert StringColon to variables
/// @param {string} string String
var a, str_count, str_str, str_ds, str_cou;
str_count = 0
str_str[0] = ""
str_cou = 0
for(a=0;a<=string_length(argument0);a++)
{
	
	if string_char_at(argument0,a) = ":"
	{
		str_count += 1
		str_str[str_count] = ""
	}
	else
	{
		str_str[str_count] += string_char_at(argument0,a)
	}
}
str_ds = ds_list_create()
repeat(str_count)
{
	str_ds[| str_cou] = str_str[str_cou]
	str_cou++
}
return ds_list_write(str_ds)