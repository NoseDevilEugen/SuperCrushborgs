/// @description Insert description here
// You can write your code in this editor



if(x>o_camera.screen_left-64	
&& x<o_camera.screen_right+64
&& y>o_camera.screen_top-64 
&& y<o_camera.screen_bottom+64)
    {
    if(spawned==false)
		{
		spawned=true
		my_child=instance_create_layer(x, y, "depth_player", o_greande_toss_soldier)
		//show_message(my_child)
		}
    }
	
if(spawned==true)
	{
	if(x<o_camera.screen_left-128	
	|| x>o_camera.screen_right+128
	|| y<o_camera.screen_top-128
	|| y>o_camera.screen_bottom+128)
		{
		if(instance_exists(my_child)==false)
			{
			spawned=false
			}
		}
	}