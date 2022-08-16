fn_on_destroy = function()	
	{
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
	instance_create_layer(o_camera.screen_left, 0, "depth_portals", o_firewall)
	}