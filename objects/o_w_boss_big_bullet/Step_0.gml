/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x+hsp, y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
		with(instance_create(x, y, o_spider_shockwave))
			{
			sprite_index=s_main_shockwave_ver
			image_xscale=sign(other.hsp)
			image_yscale=1
			vsp=-6
			if(place_meeting(x, y, o_floor))
				{
				while(place_meeting(x, y, o_floor))
					{
					x=x-sign(image_xscale)
					}
				}
			}
		with(instance_create(x, y, o_spider_shockwave))
			{
			sprite_index=s_main_shockwave_ver
			image_xscale=sign(other.hsp)
			image_yscale=-1
			vsp=6
			if(place_meeting(x, y, o_floor))
				{
				while(place_meeting(x, y, o_floor))
					{
					x=x-sign(image_xscale)
					}
				}
			}
		instance_destroy(id)
	}
x=x+hsp

if(place_meeting(x, y+vsp, o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
		with(instance_create(x, y, o_spider_shockwave))
			{
			sprite_index=s_main_shockwave
			image_xscale=-1
			image_yscale=sign(other.vsp)
			hsp=-6
			if(place_meeting(x, y, o_floor))
				{
				while(place_meeting(x, y, o_floor))
					{
					y=y-sign(image_yscale)
					}
				}
			}
		with(instance_create(x, y, o_spider_shockwave))
			{
			sprite_index=s_main_shockwave
			image_xscale=1
			image_yscale=sign(other.vsp)
			hsp=6
			if(place_meeting(x, y, o_floor))
				{
				while(place_meeting(x, y, o_floor))
					{
					y=y-sign(image_yscale)
					}
				}
			}
		instance_destroy(id)
	}
y=y+vsp