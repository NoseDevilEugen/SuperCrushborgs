/// @description Insert description here
// You can write your code in this editor

if(image_index>=image_number-1.2)
	{
	instance_change(o_special_fx, false)
	}

if(image_index>=image_number-image_speed
&& sprite_index!=noone)
	{
	instance_destroy(id)
	}