/// @description Insert description here
// You can write your code in this editor

if(counter<2)
	{
	counter=counter+0.01
	}
else
	{
	if(room_to_go!=noone)
		{
		room_goto(room_to_go)
		}
	instance_destroy(id)
	
	}
	
x=o_camera.screen_left
y=o_camera.screen_top
