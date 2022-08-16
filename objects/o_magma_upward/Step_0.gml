/// @description Insert description here
// You can write your code in this editor


if(bbox_top<o_camera.screen_top-64)
	{
	vsp=0
	}
else
	{
	vsp=-8
	y=y+vsp
	}
	
	
if(bbox_top<o_camera.screen_bottom-64)
	{
	o_camera.shake_counter=0
	}
else
	{
	o_camera.shake_counter=10
	}
