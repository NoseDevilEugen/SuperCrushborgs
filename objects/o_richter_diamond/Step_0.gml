/// @description Insert description here
// You can write your code in this editor


hsp=lengthdir_x(bullet_speed, current_dir)
vsp=lengthdir_y(bullet_speed, current_dir)

if(ricoshet>0)
	{
	if(place_meeting(x+hsp, y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		hsp=0
		vsp=0
		ricoshet=ricoshet-1
		switch(current_dir)
			{
			case 45:
				{
				current_dir=135
				break
				}
			case 135:
				{
				current_dir=45
				break
				}
			case 315:
				{
				current_dir=225
				break
				}
			case 225:
				{
				current_dir=315
				break
				}
			}
		}
	}
x=x+hsp
	
if(ricoshet>0)
	{
	if(place_meeting(x, y+vsp, o_floor))
		{
		while(!place_meeting(x, y+sign(vsp), o_floor))
			{
			y=y+sign(vsp)
			}
		hsp=0
		vsp=0
		ricoshet=ricoshet-1
		switch(current_dir)
			{
			case 45:
				{
				current_dir=315
				break
				}
			case 135:
				{
				current_dir=225
				break
				}
			case 315:
				{
				current_dir=45
				break
				}
			case 225:
				{
				current_dir=135
				break
				}
			}
		}
	}
y=y+vsp

scr_destroy_projectile()