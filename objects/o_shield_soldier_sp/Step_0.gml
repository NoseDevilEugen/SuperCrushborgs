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
		my_child=instance_create(x, y, o_shield_soldier)
		with(my_child)
			{
			if(other.x<(o_camera.screen_left+o_camera.screen_right)/2)
				{
				image_xscale=1
				}
			else if(other.x>(o_camera.screen_left+o_camera.screen_right)/2)
				{
				image_xscale=-1
				}
			}
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