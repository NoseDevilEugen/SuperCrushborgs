/// @description Insert description here
// You can write your code in this editor

if(x>o_camera.screen_left-16
&& x<o_camera.screen_right+16
&& y>o_camera.screen_top-16 
&& y<o_camera.screen_bottom+16)
    {
	AI_active=true
    }

//image_xscale=image_xscale*-1

if(AI_active==true)
	{
	
	
	
	scr_change_focus()
	
	if(action==batton_actions.wall
	|| action==batton_actions.ceiling)
		{
		player_dir=point_direction(x, y, player.x+player.hsp_final, player.y+player.vsp)
		
		if(timer>0)
			{
			timer=timer-1
			}
		
		if(timer<=0 
		&& ((x>o_camera.screen_left+32
		&& x<o_camera.screen_right-32
		&& y>o_camera.screen_top 
		&& y<o_camera.screen_bottom-16)))
			{
			
			
			hsp=round(lengthdir_x(1, player_dir))
			vsp=round(lengthdir_y(1, player_dir))
			

			base_hsp=hsp
			base_vsp=vsp
			accel_hsp=0
			accel_vsp=0
			if(place_meeting(x+1, y, o_floor) || place_meeting(x, y+1, o_floor))
				{
				counter=180
				}
			else if(place_meeting(x-1, y, o_floor) || place_meeting(x, y-1, o_floor))
				{
				counter=0
				}
			
			fly_timer=240
			action=batton_actions.fly
			}
		
		}
	
	if(action==batton_actions.fly)
		{
		counter=(counter+5) mod 360
		
		fly_timer=fly_timer-1
		
		if(base_vsp==0)
			{
			accel_vsp=dsin_array[floor(counter)]
			}
		if(base_hsp==0)
			{
			accel_hsp=dsin_array[floor(counter)]
			}

		
		if(accel_hsp<0)
			{
			hsp=base_hsp+floor(accel_hsp)
			}
		else if(accel_hsp>0)
			{
			hsp=base_hsp+ceil(accel_hsp)
			}
			
		if(accel_vsp<0)
			{
			vsp=base_vsp+floor(accel_vsp)
			}
		else if(accel_vsp>0)
			{
			vsp=base_vsp+ceil(accel_vsp)
			}
			
		if(sign(hsp!=0))
			{
			image_xscale=sign(hsp)
			}
		image_yscale=1
		
		if(place_meeting(x+floor(hsp), y, o_slope_platform) 
		|| place_meeting(x+floor(hsp), y, o_slope_ceiling)
		|| place_meeting(x+floor(hsp), y, o_floor_conv))
			{
			hsp=hsp*-1
			}
			
		if(place_meeting(x+floor(hsp), y, o_floor))
			{
			while(!place_meeting(x+sign(hsp), y, o_floor))
				{
				x=x+sign(hsp)
				}
			if(fly_timer<=0)
				{
				timer=180
				action=batton_actions.wall
				if(sign(hsp!=0))
					{
					image_xscale=sign(hsp)
					}
				if(sign(vsp!=0))
					{
					image_yscale=sign(vsp)
					}
				base_hsp=0
				base_vsp=0
				vsp=0
				}
			hsp=0
			
			}
			
		}
	x=x+round(hsp)
	
	if(action==batton_actions.fly)
		{
		
		if(sign(hsp!=0))
			{
			image_xscale=sign(hsp)
			}

		if(place_meeting(x, y+floor(vsp), o_slope_platform) 
		|| place_meeting(x, y+floor(vsp), o_slope_ceiling)
		|| place_meeting(x, y+floor(vsp), o_floor_conv))
			{
			vsp=vsp*-1
			}
		
		if(place_meeting(x, y+floor(vsp), o_floor))
			{
			while(!place_meeting(x, y+sign(vsp), o_floor))
				{
				y=y+sign(vsp)
				}
			if(fly_timer<=0)
				{
				timer=180
				action=batton_actions.ceiling
				if(sign(hsp!=0))
					{
					image_xscale=sign(hsp)
					}
				if(sign(vsp!=0))
					{
					image_yscale=sign(vsp)
					}
				base_hsp=0
				base_vsp=0
				hsp=0
				}
			
			vsp=0
			}
			
		}
	y=y+round(vsp)
	}


if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}


sprite_index=s_array[action]


hp=scr_boss_get_damage(hp)

if(hp<=0 || place_meeting(x, y, o_floor))
	{
	scr_soldier_death(sprite_index, s_sfx_explosion)
	}