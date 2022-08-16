/// @description Insert description here
// You can write your code in this editor

if(sprite_index=s_flappy)
	{
	vsp=0
	if(image_index>=image_number-image_speed)
		{
		sprite_index=s_flappy_idle
		}
	}

if(sprite_index==s_flappy_idle)
	{
	vsp=10
	
	if(place_meeting(x, y+round(vsp), o_floor))
		{
		while(!place_meeting(x, y+sign(vsp), o_floor))
			{
			y=y+sign(vsp)
			}
		vsp=0
		instance_destroy()
		}
	y=y+vsp
	
	}
	