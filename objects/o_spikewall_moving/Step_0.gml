/// @description Insert description here
// You can write your code in this editor

x=o_camera.screen_left

if(instance_exists(hazard))
	{
	hazard.x=x
	hazard.y=y
	}
	
if(o_camera.autoscroll_x==false)
	{
	instance_change(o_spikewall_static, false)
	}
