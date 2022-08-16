//x=floor(x)
//y=floor(y)
if(hsp==0)
	{
	timer_shoot=180
	}
	
image_speed=0.2*(sign(hsp))

if(hsp==0 && o_camera.autoscroll_x==false && x<o_camera.screen_right-240)
	{
	hsp=-1
	timer_shoot=irandom_range(90,180)
	}
	
if(hsp==0 && o_camera.autoscroll_x==false && x<o_camera.screen_right)
	{
	hsp=1
	timer_shoot=irandom_range(90,180)
	}	

if(hp>0)
	{
	hp=scr_boss_get_damage(hp)
	if(timer_shoot>-60)
		{
		if(timer_shoot==60)
			{
			charge_index=0	
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
	instance_destroy(laser)
	scr_boss_death(sprite_index, 1, noone)
	//instance_destroy(id)
	shooting=false
	}



if(place_meeting(x+round(hsp), y, o_spikewall_static))
	{
	hsp=hsp*-1
	}
	
x=x+hsp
x=floor(x)

laser.x=x+16
laser.y=y

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}