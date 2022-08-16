/// @description Insert description here
// You can write your code in this editor
if((o_camera.autoscroll_y==true 
|| o_camera.autoscroll_x==true)
&& place_meeting(x, y, o_raising_acid))
	{
	/*
	if(instance_exists(o_controller.player1))
		{
		if(id==o_controller.player1.safe_block)
			{
			with(o_controller.player1)
				{
				safe_block=instance_nearest(x, y, o_safe_spawner)
				}
			}
		}
	if(instance_exists(o_controller.player2))
		{
		if(id==o_controller.player2.safe_block)
			{
			with(o_controller.player2)
				{
				safe_block=instance_nearest(x, y, o_safe_spawner)
				}
			}
		}
	*/
	//show_message(string(id)+", "+string(x)+", "+string(y))
	instance_destroy()
	}