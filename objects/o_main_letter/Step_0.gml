/// @description Insert description here
// You can write your code in this editor

if(flying==true)
	{
	if(place_meeting(x+hsp, y, o_main_letter))
		{
		while(!place_meeting(x+sign(hsp), y, o_main_letter))
			{
			x=x+sign(hsp)
			}
		hsp=0
		flying=false
		}
	x=x+hsp
	}