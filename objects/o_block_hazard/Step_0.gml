//x=floor(x)
//y=floor(y)

if(hp>0)
	{
	hp=scr_boss_get_damage(hp)
	
	
	
	if(timer_shoot>-60)
		{
			
		if(timer_shoot==60)
			{
			with(instance_create_layer(x+(32*sign(image_xscale)), y+16, "depth_player", o_special_fx))
				{
				sprite_index=s_gun_charging
				image_speed=0.5
				}
			}	
			
		timer_shoot=timer_shoot-1
		if(timer_shoot<0)
			{
			shooting=true
			instance_activate_object(laser)
			}
		else
			{
			instance_deactivate_object(laser)
			shooting=false
			}
		}
	else
		{
		timer_shoot=180
		}
	
	}
else
	{
	instance_deactivate_object(laser)
	
	instance_create_layer(x, y, "depth_player", o_floor,
		{
		sprite_index: s_laser_cannon_hor_broken,
		image_xscale: other.image_xscale,
		image_yscale: other.image_yscale
		})
	instance_destroy(id)
	shooting=false
	}

