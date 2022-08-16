/// @description Insert description here
// You can write your code in this editor

if(!place_meeting(x, y, o_floor))
	{
	if(to_spawn!=noone)
		{
		instance_create(x, y, to_spawn)
		}
	}