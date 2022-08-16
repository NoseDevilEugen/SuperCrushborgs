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


if(connected==true)
	{
	hsp=0
	vsp=0
	/*
	if(sprite_web==s_laser_wide)
		{
		p_blood_dir=point_direction(x, y, x*image_xscale, y-10)   
		part_type_direction(p_blood, p_blood_dir, p_blood_dir, 0, 0)
		part_type_speed(p_blood, 0.5, 1, 0, 0)
		part_type_orientation(p_blood, 0, 360, 0, 1, false)
		}
	*/
	}

if(place_meeting(x+round(hsp), y, o_floor))
	{
	x=x+hsp
	y=y+vsp
	hsp=0
	vsp=0
	connected=true
	}	


if(place_meeting(x, y+round(vsp), o_floor))
	{
	x=x+hsp
	y=y+vsp
	hsp=0
	vsp=0
	connected=true
	}	
x=x+(hsp)
y=y+(vsp)

line_index=line_index+0.2

if(line_index>=2)
	{
	line_index=0
	}