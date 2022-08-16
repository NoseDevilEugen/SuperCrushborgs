/// @description Insert description here
// You can write your code in this editor
with(instance_create_layer(x, y, "depth_player", o_dual_spider))
	{
	image_xscale=other.image_xscale
	image_yscale=other.image_yscale
	if(o_controller.player2!=noone)
		{
		player=o_controller.player2
		}
	else
		{
		player=o_controller.player1
		}
	if(image_xscale==-1)
		{
		timer_web_shot=360
		
		}
	}