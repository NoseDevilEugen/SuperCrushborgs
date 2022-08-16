fn_on_destroy = function()	
	{
	if(instance_exists(o_controller.player1))
		{
		o_controller.player1.safe_block=safe_rocket2
		}
	if(instance_exists(o_controller.player2))
		{
		o_controller.player2.safe_block=safe_rocket2
		}
	}