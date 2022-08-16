/// @description Insert description here
// You can write your code in this editor

if(timer>0
&& o_camera.autoscroll_x==false 
&& o_camera.screen_left>=room_width-482)
	{
	timer=timer-1
	}

if(timer<=0)
	{
	//show_message("triggered")
	
	instance_destroy(id, true)

	}