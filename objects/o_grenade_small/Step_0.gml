/// @description Insert description here
// You can write your code in this editor

if(hsp>2)
	{
	hsp=hsp-0.05
	}

if(hsp<-2)
	{
	hsp=hsp+0.05
	}


if(vsp<6)
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
	
x=x+floor(hsp)
x=floor(x)

if(place_meeting(x, y+floor(vsp), o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	vsp=0
	}
	
y=y+floor(vsp)
y=floor(y)

if(place_meeting(x, y+1, o_floor))
	{
	instance_destroy(id)
	}

if(!place_meeting(x, y, o_one_way_floor))
	{
	if(place_meeting(x, y+vsp, o_one_way_floor) && vsp>0)
		{
		instance_destroy(id)
		}
	}
	
if(place_meeting(x, y, o_player_skelet))
	{
	instance_destroy(id)
	}
	
if(y>=o_camera.camera_border_bottom)
	{
	instance_destroy(id)
	}