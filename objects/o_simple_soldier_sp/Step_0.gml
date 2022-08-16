/// @description Insert description here
// You can write your code in this editor



if(x>o_camera.screen_left-64	
&& x<o_camera.screen_right+64
&& y>o_camera.screen_top-16 
&& y<o_camera.screen_bottom+16)
    {
    if(spawned==false
	&& !place_meeting(x, y, o_simple_soldier))
		{
		spawned=true
		counter=counter+1
		my_child=instance_create_layer(x, y, "depth_player", o_simple_soldier)
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
				
			spawn_parent=other.id
			image_index=irandom_range(0,3)
			AI_active=true
			}
		//show_message(my_child)
		}
    }
	
if(spawned==true)
	{
	if(
	(x<o_camera.screen_left-128 && x>o_camera.camera_border_left)	
	|| (x>o_camera.screen_right+128 && x<o_camera.camera_border_right)
	|| (y<o_camera.screen_top-128 && y>o_camera.camera_border_top)
	|| (y>o_camera.screen_bottom+128 && y<o_camera.camera_border_bottom))
		{
		if(instance_exists(my_child)==false)
			{
			spawned=false
			}
		}
	}