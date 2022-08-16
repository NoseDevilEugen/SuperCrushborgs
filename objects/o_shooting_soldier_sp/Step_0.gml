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
		my_child=instance_create_layer(x, y, "depth_player", o_shooting_soldier)
		//вот тут почему-то происходит Create event инстанса my_child
		with(my_child)
			{
			image_yscale=other.image_yscale	
			scr_init_standing()
			if(other.x<(o_camera.screen_left+o_camera.screen_right)/2)
				{
				image_xscale=1
				}
			else if(other.x>(o_camera.screen_left+o_camera.screen_right)/2)
				{
				image_xscale=-1
				}
			}
		//а я ожидал, что он произойдёт ПОСЛЕ окончания этого Step event
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





