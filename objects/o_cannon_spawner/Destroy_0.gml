/// @description Insert description here
// You can write your code in this editor
if(to_spawn!=noone)
	{
	spawn=instance_create(x, y, to_spawn)
	with(spawn)
		{
		timer_attack=other.timer_attack
		image_xscale=other.image_xscale
		}
	}
