/// @description Insert description here
// You can write your code in this editor



if(image_index>=image_number-image_speed)
	{
	image_speed=0
	}


if(image_speed==0)
	{
	hp=scr_boss_get_damage(hp)
	
	if(shoot_timer>0)
		{
		shoot_timer=shoot_timer-1
		}
	else
		{
		shoot_timer=240
		with(instance_create(x, y, o_joe_spreadgun_bullet))
			{
			hsp=-6
			vsp=0
			}
		}
	}
	
	
if(hp<0)
	{
	scr_boss_death(sprite_index, 1, my_next_room)
	}