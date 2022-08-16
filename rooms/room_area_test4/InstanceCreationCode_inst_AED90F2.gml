fn_on_destroy = function()	
	{
	with(o_rocket_boss)
		{
		moving=true
		}
	//instance_activate_object(o_rocket_boss)
	o_camera.camera_border_top=560
	o_camera.camera_border_left=6624
	o_camera.camera_border_bottom=1062
	o_camera.camera_border_right=room_width
	o_camera.autoscroll_x=true
	o_camera.autoscroll_dir_x=1
	o_camera.autoscroll_y=true
	o_camera.autoscroll_dir_y=1
	
	instance_destroy(big_rocket1)
	if(instance_exists(o_controller.player1))
		{
		o_controller.player1.safe_block=safe_rocket2
		}
	if(instance_exists(o_controller.player2))
		{
		o_controller.player2.safe_block=safe_rocket2
		}

	}