fn_on_destroy = function()	
	{
	instance_deactivate_region(6800, 0, 5550, 400, true, false)
	instance_activate_object(o_controller)
	instance_activate_object(o_pause)
	instance_activate_object(o_camera)
	instance_activate_object(o_main_player)
	instance_activate_object(o_raising_acid)
	}