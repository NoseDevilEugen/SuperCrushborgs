/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x+hsp, y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	hsp=0
	vsp=0
	}
x=x+floor(hsp)
x=floor(x)
	
if(place_meeting(x, y+vsp, o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	hsp=0
	vsp=0
	}
y=y+floor(vsp)
y=floor(y)

if(hsp=0 && vsp=0)
	{
	timer=timer+1
	}
	
if(timer>=360 && o_boss_phantom.action!=phantom_actions.teleport)
	{
	instance_destroy()
	}