/// @description Insert description here
// You can write your code in this editor


x=x+hsp
y=y+vsp


if(place_meeting(x, y+vsp, o_floor) 
|| place_meeting(x+hsp, y, o_floor))
	{
	instance_destroy(id)
	}

if(!place_meeting(x, y+1, o_floor)
&& !place_meeting(x, y-1, o_floor)
&& !place_meeting(x+1, y, o_floor)
&& !place_meeting(x-1, y, o_floor))
	{
	instance_destroy(id)
	}

scr_destroy_projectile()