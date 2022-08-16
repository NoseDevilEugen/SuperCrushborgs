/// @description Insert description here
// You can write your code in this editor

if(onscreen==false)
	{
	if(x>o_camera.screen_left
	&& x<o_camera.screen_right
	&& y>o_camera.screen_top
	&& y<o_camera.screen_bottom)
		{
		onscreen=true
		}
	}
//sprite_index=s_machinegun_bullet_idle

image_angle=current_dir

if(instance_place(x, y, o_blackhole_field)
&& point_distance(x, y, instance_place(x, y, o_blackhole_field).x, instance_place(x, y, o_blackhole_field).y)<=56)
	{
	
	var _aim=instance_place(x, y, o_blackhole_field).my_parent
	var _dir=point_direction(x, y, _aim.x, _aim.y)
	if(bullet_catched==false)
		{
		bullet_catched=true
		angle=point_direction( _aim.x, _aim.y, x, y)
		orbit=point_distance(x, y, _aim.x, _aim.y)-12
		closing_speed=1
		}
	closing_speed=closing_speed+0.2
	angle=angle+(closing_speed) mod 360
	orbit=orbit-0.5
	hsp=((lengthdir_x(orbit, angle)+_aim.x)-xprevious)
	vsp=((lengthdir_y(orbit, angle)+_aim.y)-yprevious)
	
	//hsp=lengthdir_x(1, _dir)
	//vsp=lengthdir_y(1, _dir)
	x=x+hsp
	y=y+vsp
	image_index=0
	image_angle=_dir
	}
else
	{
	if(bullet_catched==true)
		{
		hsp=lengthdir_x(bullet_speed, angle)
		vsp=lengthdir_y(bullet_speed, angle)
		image_angle=angle
		//instance_destroy(id)
		}
	if(stuck_timer>0)
		{
		stuck_timer=stuck_timer-1
		hsp=0
		vsp=0
		}
	else
		{
		hsp=lengthdir_x(bullet_speed, current_dir)
		vsp=lengthdir_y(bullet_speed, current_dir)
	
		}

	if(ricoshet>0)
		{
		if(place_meeting(x+round(hsp), y, o_floor) 
		&& instance_place(x+round(hsp), y, o_floor).object_index!=o_destructible
		&& instance_place(x+round(hsp), y, o_floor).object_index!=o_block_hazard
		&& instance_place(x+round(hsp), y, o_floor).object_index!=o_block_hazard_ver)
			{
			while(!place_meeting(x+sign(hsp), y, o_floor))
				{
				x=x+sign(hsp)
				}
			hsp=0
			vsp=0
	
			audio_play_sound(o_controller.sound_array[11], 10, false)
			with(instance_create(x, y, o_special_fx))
				{
				sprite_index=s_shinobot_e_explosion
				image_speed=1
				}
			if(stuck_timer==0)
				{
				stuck_timer=stuck_timer_reset
				}
			ricoshet=ricoshet-1
			switch(current_dir)
				{
				case 45:
					{
					current_dir=135
					break
					}
				case 0:
					{
					current_dir=135
					break
					}
				case 180:
					{
					current_dir=45
					break
					}
				case 135:
					{
					current_dir=45
					break
					}
				case 315:
					{
					current_dir=225
					break
					}
				case 225:
					{
					current_dir=315
					break
					}
				}
			}
		}
		
	x=x+round(hsp)
	
	if(ricoshet>0)
		{
		if(place_meeting(x, y+round(vsp), o_floor) 
		&& instance_place(x, y+round(vsp), o_floor).object_index!=o_destructible
		&& instance_place(x, y+round(vsp), o_floor).object_index!=o_block_hazard
		&& instance_place(x, y+round(vsp), o_floor).object_index!=o_block_hazard_ver)
			{
			while(!place_meeting(x, y+sign(vsp), o_floor))
				{
				y=y+sign(vsp)
				}
			audio_stop_sound(o_controller.sound_array[11])
			audio_play_sound(o_controller.sound_array[11], 10, false)
			hsp=0
			vsp=0
			with(instance_create(x, y, o_special_fx))
				{
				sprite_index=s_shinobot_e_explosion
				image_speed=1
				}
			if(stuck_timer==0)
				{
				stuck_timer=stuck_timer_reset
				}
			ricoshet=ricoshet-1
			switch(current_dir)
				{
				case 45:
					{
					current_dir=315
					break
					}
				case 135:
					{
					current_dir=225
					break
					}
				case 315:
					{
					current_dir=45
					break
					}
				case 225:
					{
					current_dir=135
					break
					}
				case 90:
					{
					if(scale==1)
						{
						current_dir=315
						}
					if(scale==-1)
						{
						current_dir=225
						}
					break
					}
				case 270:
					{
					if(scale==1)
						{
						current_dir=45
						}
					if(scale==-1)
						{
						current_dir=135
						}
					break
					}
				}
			}
		}
	y=y+round(vsp)
	}
	
if(onscreen==true)
	{
	scr_destroy_projectile()
	}
