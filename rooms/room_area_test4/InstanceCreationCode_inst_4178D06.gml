fn_on_destroy = function()	
	{
	o_camera.camera_border_top=0
	o_camera.camera_border_bottom=560+270
	
	instance_destroy(preboss_block)
	
	if(instance_exists(o_controller.player1))
		{
		o_controller.player1.safe_block=preboss_spawner
		}
	if(instance_exists(o_controller.player2))
		{
		o_controller.player2.safe_block=preboss_spawner
		}
	}