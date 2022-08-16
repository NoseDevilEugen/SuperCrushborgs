fn_on_destroy = function()	
	{
	
	o_camera.camera_border_left=0
	o_camera.autoscroll_x=true
	o_camera.autoscroll_dir_x=-1
	instance_destroy(lvl1_spawner1)
	instance_destroy(lvl1_spawner2)
	//instance_deactivate_region(0, 0, 12700, 400, true, false)
	instance_activate_object(o_controller)
	instance_activate_object(o_pause)
	instance_activate_object(o_camera)
	instance_activate_object(o_main_player)
	instance_activate_object(o_raising_acid)
	
	//instance_create_layer(o_camera.screen_left, 0, "depth_portals", o_firewall)
	}