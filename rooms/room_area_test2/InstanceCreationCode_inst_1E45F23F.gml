fn_on_destroy = function()	
	{
		
	o_camera.camera_border_right=room_width
	o_camera.autoscroll_x=true
	o_camera.autoscroll_dir_x=1
		
	
	//o_camera.camera_border_bottom=room_height
	//o_camera.autoscroll_y=true
	//o_camera.autoscroll_dir_y=1
		
		
	instance_deactivate_region(0, 0, 12700, 400, true, false)
	instance_activate_object(o_controller)
	instance_activate_object(o_pause)
	instance_activate_object(o_camera)
	instance_activate_object(o_main_player)
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
	instance_create_layer(o_camera.screen_left, 0, "depth_portals", o_firewall)
	}