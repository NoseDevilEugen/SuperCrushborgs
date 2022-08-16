/// @description Insert description here
// You can write your code in this editor

	
if(object_index==o_parent_bullet
&& place_meeting(x, y, o_blackhole_field))
	{
	var _aim=instance_place(x, y, o_blackhole_field).my_parent
	var _dir=point_direction(x, y, _aim.x, _aim.y)
	hsp=lengthdir_x(2, _dir)
	vsp=lengthdir_y(2, _dir)
	x=x+hsp
	y=y+vsp

	}
	