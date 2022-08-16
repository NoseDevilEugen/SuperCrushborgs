// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_array_have_value(array, value)
	{
	var loop=0
	repeat(array_length(array))
		{
		if(array[loop++]==value)
			{
			return true
			}
		}
	return false
	}