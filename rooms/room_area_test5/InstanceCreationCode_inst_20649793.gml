fn_on_destroy = function()	
	{
	
	o_camera.camera_border_right=1600
	o_camera.autoscroll_x=true
	o_camera.autoscroll_dir_x=1
		
	instance_activate_object(o_raising_acid)
	
	if(instance_exists(floor_explode))
		{
		instance_destroy(floor_explode)
		}
	if(instance_exists(floor_explode2))
		{
		instance_destroy(floor_explode2)
		}
	if(instance_exists(floor_explode3))
		{
		instance_destroy(floor_explode3)
		}
	if(instance_exists(floor_explode4))
		{
		instance_destroy(floor_explode4)
		}
	if(instance_exists(floor_explode5))
		{
		instance_destroy(floor_explode5)
		}
	instance_create_layer(o_camera.screen_left, 48, "depth_portals", o_spikewall_moving)
	}