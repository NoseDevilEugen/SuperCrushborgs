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
		my_child=instance_create(x, y, o_shooting_soldier_fly)
		//show_message(my_child)
		}
    }
	
if(spawned==true)
	{
	if(x<o_camera.screen_left-96	
	|| x>o_camera.screen_right+96
	|| y<o_camera.screen_top-96
	|| y>o_camera.screen_bottom+96)
		{
		if(instance_exists(my_child)==false)
			{
			spawned=false
			}
		}
	}