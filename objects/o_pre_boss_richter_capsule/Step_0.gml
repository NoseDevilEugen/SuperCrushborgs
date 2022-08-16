/// @description Insert description here
// You can write your code in this editor

if(o_camera.scroll_x==false 
&& o_camera.scroll_y==false
&& image_index==0)
	{
	image_speed=0.2
	}

if(image_index>=image_number-1)
	{
	instance_destroy(id)
	}