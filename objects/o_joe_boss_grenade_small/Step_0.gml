/// @description Insert description here
// You can write your code in this editor

if(vsp<8)
	{
	vsp=vsp+grav
	}

if(place_meeting(x+hsp, y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	hsp=0
	}

	
x=x+hsp

if(place_meeting(x, y+vsp, o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	vsp=0
	}
	
if(place_meeting(x, y+1, o_floor))
	{
	instance_destroy()
	}
	
y=y+vsp