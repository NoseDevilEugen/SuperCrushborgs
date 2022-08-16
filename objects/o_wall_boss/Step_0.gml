/// @description Insert description here
// You can write your code in this editor


if(!instance_exists(cannon1)
&& !instance_exists(cannon2)
&& !instance_exists(cannon3)
&& !instance_exists(cannon4))
	{
	instance_activate_object(eye1)
	instance_activate_object(eye2)
	with(eye1)
		{
		instance_activate_object(id.target)
		}
	with(eye2)
		{
		instance_activate_object(id.target)
		}

	}
if(!instance_exists(cannon1)
&& !instance_exists(cannon2)
&& !instance_exists(cannon3)
&& !instance_exists(cannon4)
&& !instance_exists(eye1)
&& !instance_exists(eye2))
	{
	scr_boss_death(sprite_index, 7, my_next_room)
	}

/*
if(instance_number(o_wall_eye)<=0 && instance_number(o_wall_cannon)<=0)
	{
	scr_boss_death(sprite_index, 7, my_next_room)
	}
	
*/	
	