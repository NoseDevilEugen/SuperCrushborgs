/// @description Insert description here
// You can write your code in this editor

if(timer>0)
	{
	timer=timer-1
	}
	
else
	{
	dust=true
	if(my_left<=my_right+4)
		{
		my_left=my_left+0.5
		my_offset_left=my_offset_left+0.5
		}
	else
		{
		instance_destroy(id)
		}
	}
