/// @description Insert description here
// You can write your code in this editor
floor_ver_step_new()

if(bbox_left<o_camera.screen_right
&& bbox_right>o_camera.screen_left)
	{
	laser.x=x+68
	laser.y=bbox_bottom+10

	if(instance_exists(pre_laser))
		{
		pre_laser.y=bbox_bottom+10
		}

	if(timer_laser>0)
		{
		timer_laser=timer_laser-1
		}
	else
		{
	
	
		timer_laser=200
		}
	
	if(timer_laser>120)
		{
		laser.image_yscale=laser.image_yscale+0.2
		}
	
	if(timer_laser<=120)
		{
		laser.image_yscale=0
	
		}
	
	if(timer_laser==60)
		{
		pre_laser=instance_create(x+68, bbox_bottom+10, o_special_fx)
		with(pre_laser)
			{
			sprite_index=s_downward_laser_pre
			image_yscale=5
			image_index=0
			image_speed=0.2
			}
		}
	}