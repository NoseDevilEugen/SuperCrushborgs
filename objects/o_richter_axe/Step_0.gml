/// @description Insert description here
// You can write your code in this editor

if(vsp<6)
	{
	vsp=vsp+grav
	}



if(place_meeting(x+floor(hsp), y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	hsp=0
	}
x=x+floor(hsp)
	

if(place_meeting(x, y+floor(vsp), o_floor) && vsp<0)
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	vsp=0
	}
y=y+vsp

scr_destroy_projectile()