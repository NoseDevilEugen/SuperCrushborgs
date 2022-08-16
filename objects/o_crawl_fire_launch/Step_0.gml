/// @description Insert description here
// You can write your code in this editor
if(launch_timer>0)
	{
	launch_timer=launch_timer-1
	}
else
	{
	if(x>o_camera.screen_left && x<o_camera.screen_right)
		{
		instance_create(x, y, o_crawl_fire_bomb)
		}
	launch_timer=reset_timer
	}