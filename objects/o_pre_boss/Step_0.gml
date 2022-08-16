/// @description Insert description here
// You can write your code in this editor

if(o_controller.player.scroll_x==false && o_controller.player.scroll_y==false)
	{
	if(timer>0)
		{
		timer=timer-1
		}
	else
		{
		instance_destroy()
		}
	}