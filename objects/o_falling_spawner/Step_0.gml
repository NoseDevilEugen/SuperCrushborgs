/// @description Insert description here
// You can write your code in this editor

counter=(counter+2) mod 360

if(vsp<1)
	{
	vsp=vsp+grav
	}
	
if(hsp!=0 && x_start==-1)
	{
	hsp=hsp+(fric*-sign(hsp))
	}

if(hsp==0 && x_start==-1)
	{
	counter=0
	x_start=x
	}
	
if(x_start!=-1)
	{
	if(sub==1)
		{
		hsp = (x_start + dsin(counter)*30)-xprevious
		}
	else
		{
		hsp = (x_start - dsin(counter)*30)-xprevious
		}
	}

x=x+floor(hsp)
x=floor(x)

if(place_meeting(x, y+floor(vsp), o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	vsp=0
	instance_destroy(id, true)
	}

y=y+floor(vsp)
y=floor(y)