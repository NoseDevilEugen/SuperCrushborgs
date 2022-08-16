/// @description Insert description here
// You can write your code in this editor

if(onscreen==true)
	{
	if(x<o_camera.screen_left-256
	|| x>o_camera.screen_right+256
	|| y<o_camera.screen_top-256
	|| y>o_camera.screen_bottom+256)
		{
		instance_destroy(id)
		}
		
	if(timer>0)
		{
		timer=timer-1
		}
		
	if(timer==100)
		{
		if(instance_number(o_simple_soldier)<10)
			{
			if(x<o_camera.screen_left-24
			|| x>o_camera.screen_right+24
			|| y<o_camera.screen_top-32
			|| y>o_camera.screen_bottom+32)
				{
				if(o_camera.camera_moving==true)
					{
					with(instance_create_layer(x, y, "depth_player", o_simple_soldier))
						{
						AI_active=true
						image_xscale=-sign(x-player.x)
						vsp=-2
						}
					}
				}
			}
		}
	
	if(timer<=0)
		{
		timer=180
		if(instance_number(o_simple_soldier)<10)
			{
			if(x<o_camera.screen_left-24
			|| x>o_camera.screen_right+24
			|| y<o_camera.screen_top-32
			|| y>o_camera.screen_bottom+32)
				{
				if(o_camera.camera_moving==true)
					{
					with(instance_create_layer(x, y, "depth_player", o_simple_soldier))
						{
						AI_active=true
						image_xscale=-sign(x-player.x)
						vsp=-2
						}
					}
				}
			}
		}
	}

if(x>o_camera.screen_left-16
&& x<o_camera.screen_right+16
&& y>o_camera.screen_top-16 
&& y<o_camera.screen_bottom+16)
    {
	onscreen=true
	}

