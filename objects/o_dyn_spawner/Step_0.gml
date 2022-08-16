/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, o_raising_acid))
	{
	x=instance_nearest(x, y, o_safe_spawner).x
	y=instance_nearest(x, y, o_safe_spawner).y
	}