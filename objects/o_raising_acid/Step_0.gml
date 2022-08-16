/// @description Insert description here
// You can write your code in this editor




if(instance_place(x, y, o_richter_head))
	{
	instance_destroy(instance_place(x, y, o_richter_head))
	o_camera.camera_border_top=0
	o_camera.autoscroll_y=true
	o_camera.autoscroll_dir_y=-1
	}


