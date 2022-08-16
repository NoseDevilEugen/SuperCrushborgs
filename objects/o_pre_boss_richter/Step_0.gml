/// @description Insert description here
// You can write your code in this editor

if(o_camera.scroll_x==false 
&& o_camera.scroll_y==false
&& image_speed==0
&& x>o_camera.screen_left-16
&& x<o_camera.screen_right+16
&& y>o_camera.screen_top-16 
&& y<o_camera.screen_bottom+16)
	{
	image_speed=0.2
	}

if(image_index>=image_number-image_speed)
	{
	o_camera.camera_border_right=o_camera.screen_right
	instance_destroy(id)
	}