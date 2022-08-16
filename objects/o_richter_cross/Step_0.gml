/// @description Insert description here
// You can write your code in this editor

if(ricoshet=true)
	{
	if(place_meeting(x+hsp, y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		hsp=hsp*-1
		ricoshet=false
		}
	}
x=x+hsp
	
y=y+vsp

scr_destroy_projectile()