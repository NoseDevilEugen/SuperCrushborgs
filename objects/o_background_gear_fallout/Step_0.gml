/// @description Insert description here
// You can write your code in this editor

if(collision_circle(x, y, 120, o_main_player, false, false))
	{
	instance_destroy(id)
	with(instance_create(x, y, o_barrel))
		{
		image_speed=0
		hsp=sign(other.image_speed)*2
		vsp=0
		thrown=true
		}
	}