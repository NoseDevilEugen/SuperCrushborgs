/// @description Insert description here
// You can write your code in this editor

if(timer>0
&& x>o_camera.screen_left-16
&& x<o_camera.screen_right+16
&& y>o_camera.screen_top-16 
&& y<o_camera.screen_bottom+16
&& o_camera.scroll_x==false 
&& o_camera.scroll_y==false)
	{
	timer=timer-2
	}

if(timer<=0)
	{
	//show_message("triggered")
	
	instance_destroy(id, true)
	}
	
if(place_meeting(x, y+1, o_block_complex_ship))
	{
	y=y+instance_place(x, y+1, o_block_complex_ship).vsp
	y=floor(y)
	}
	
	