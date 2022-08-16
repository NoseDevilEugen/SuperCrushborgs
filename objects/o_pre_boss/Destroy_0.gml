/// @description Insert description here
// You can write your code in this editor

if(boss_instance!=noone)
	{
	with(instance_create(x, y, boss_instance))
		{
		image_xscale=other.image_xscale
		image_yscale=other.image_yscale
		}
	}