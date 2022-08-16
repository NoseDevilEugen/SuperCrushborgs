/// @description Insert description here
// You can write your code in this editor

/*
if(instance_place(x, y, o_floor)!=noone 
&& instance_place(x, y, o_floor).object_index!=o_floor_conv
&& instance_place(x, y, o_floor).object_index!=o_floor_conv_mirrored)
	{
	hsp=instance_place(x, y, o_floor).hsp
	vsp=instance_place(x, y, o_floor).vsp
	
	if(instance_exists(my_haz))
		{
		my_haz.x=my_haz.x+hsp
		my_haz.y=my_haz.y+vsp
		my_haz.y=round(my_haz.y)
		}
	
	}
*/



x=x+hsp
y=y+vsp

if(instance_exists(my_haz))
		{
		my_haz.x=my_haz.x+hsp
		my_haz.y=my_haz.y+vsp
		my_haz.y=round(my_haz.y)
		}

y=round(y)