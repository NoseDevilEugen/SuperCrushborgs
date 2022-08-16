/// @description Insert description here
// You can write your code in this editor


if((vsp<6 && grav>0)
|| (vsp>-6 && grav<0))
	{
	vsp=vsp+grav
	}
	
if(place_meeting(x, y+vsp, o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
		with(instance_create(bbox_left, y+10*image_yscale, o_spider_shockwave))
			{
			
			image_xscale=-1
			image_yscale=other.image_yscale
			while(place_meeting(x, y, o_floor))
				{
				y=y-image_yscale
				}
			hsp=-5
			}
		with(instance_create(bbox_right, y+10*image_yscale, o_spider_shockwave))
			{
			image_xscale=1
			image_yscale=other.image_yscale
			while(place_meeting(x, y, o_floor))
				{
				y=y-image_yscale
				}
			hsp=5
			}
		instance_destroy(id)
	}
y=y+vsp