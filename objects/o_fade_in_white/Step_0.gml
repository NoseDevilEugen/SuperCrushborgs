/// @description Insert description here
// You can write your code in this editor

if(counter>0)
	{
	counter=counter-0.01
	}
else
	{
	o_camera.camera_border_right=room_width
	instance_destroy(id)
	}
	
x=o_camera.screen_left
y=o_camera.screen_top
