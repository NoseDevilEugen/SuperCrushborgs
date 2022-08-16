/// @description Insert description here
// You can write your code in this editor

counter=counter+1

if(counter>=5)
	{
	counter=0
	var i=0
	for(i=0; i<array_length(subimage_arr)-1; i++)
		{
		subimage_arr[i]=irandom_range(0, array_length(subimage_arr)-1)
		}
	}

if(place_meeting(x+hsp, y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	hsp=0
	vsp=0
	connected=true
	

	}	
x=x+hsp

if(place_meeting(x, y+vsp, o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	hsp=0
	vsp=0
	connected=true

	}	
y=y+vsp