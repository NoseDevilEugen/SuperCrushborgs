/// @description Insert description here
// You can write your code in this editor

if(hp<400 && phase==0)
	{
	if(!place_meeting(x, y, o_floor))
		{	
		var w = sprite_get_height(s_pendulum_chain)-10
		var dir = point_direction(id.x, id.y, anchor_x, anchor_y)
		//var dir = point_direction(start_x, start_y+3, id.x, id.y+10)
		var xx = lengthdir_x(w, dir), yy = lengthdir_y(w, dir)
		var count = point_distance(anchor_x, anchor_y, id.x, id.y) div w
		for(var i=0; i<count; i++)
		    {
		    if(i>0)
		        {
				with(instance_create(x + xx * i, y + yy * i, o_special_fx))
					{
					sprite_index=s_sfx_explosion
					image_index=0
					}
		        //draw_sprite_ext(s_pendulum_chain, 0, x + xx * i, y + yy * i, image_xscale, image_yscale, dir+90, -1, 1)
		        }
		    }
			
			
		phase=1
		if(hsp>0)
			{
			current_dir=45
			}
		else
			{
			current_dir=135
			}
		}
	}

if(phase==0)
	{
	
	//angle=clamp(angle, -45, -135)
		
	
	angle_accelerration = -.05 * dcos(angle)
     
	angle_velocity += angle_accelerration
	angle += angle_velocity
     
	//angle_velocity *= velocity_dampening;

	var new_x = anchor_x + lengthdir_x(distance, angle)
	var new_y = anchor_y + lengthdir_y(distance, angle)

	hsp = new_x - x
	vsp = new_y - y
	
	//image_xscale=sign(hsp)
	
	if(debris==false && place_meeting(x, y, o_floor))
		{
		debris=true
		
		with(instance_create(x, y+((sprite_height/8)*sign(vsp)), o_spider_shockwave))
			{
			image_xscale=-1
			image_yscale=sign(other.vsp)
			sprite_index=s_main_shockwave
			while(place_meeting(x, y, o_floor))
				{
				y=y-sign(other.vsp)
				}
			hsp=-4

			}
		with(instance_create(x, y+((sprite_height/8)*sign(vsp)), o_spider_shockwave))
			{
			image_xscale=1
			image_yscale=sign(other.vsp)
			while(place_meeting(x, y, o_floor))
				{
				y=y-sign(other.vsp)
				}
			hsp=4
			}
		
		with(instance_create(x, y-13, o_falling_spikes))
			{
			sprite_index=other.s_spikes_array[irandom_range(0, 4)]
			timer_fall=irandom_range(10, 100)
			}
		
		if(x<o_camera.screen_left+240)
			{
			with(instance_create(bbox_left-8, y-13, o_falling_spikes))
				{
				sprite_index=other.s_spikes_array[irandom_range(0, 4)]
				timer_fall=irandom_range(10, 100)
				}
			}
		else
			{
			with(instance_create(bbox_right+8, y-13, o_falling_spikes))
				{
				sprite_index=other.s_spikes_array[irandom_range(0, 4)]
				timer_fall=irandom_range(10, 100)
				}
			}
		with(instance_create(o_controller.player.x+o_controller.player.image_xscale*35, y-13, o_falling_spikes))
			{
			sprite_index=other.s_spikes_array[irandom_range(0, 4)]
			timer_fall=irandom_range(40, 90)
			}
		with(instance_create(o_controller.player.x-o_controller.player.image_xscale*35, y-13, o_falling_spikes))
			{
			sprite_index=other.s_spikes_array[irandom_range(0, 4)]
			timer_fall=irandom_range(40, 90)
			}
			
		}
	if(!place_meeting(x, y, o_floor))
		{
		debris=false
		}

	x += hsp
	y += vsp
	}
	
if(phase==1)
	{
		
	if(current_dir==45
	|| current_dir==135
	|| current_dir==225
	|| current_dir==315)
		{
		sprite_index=s_index[current_dir]
		}
	else
		{
		sprite_index=s_pendulum_main
		}
		
	instance_destroy(o_laser_hazard_horizontal_left)
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
	
	if(ricoshet==0)
		{
		current_dir=point_direction(x, y, o_camera.screen_left+240, o_camera.screen_top+135)
		if(point_distance(x, y, o_camera.screen_left+240, o_camera.screen_top+135)<=bullet_speed)
			{
			hsp=0
			vsp=0
			x=o_camera.screen_left+240
			y=o_camera.screen_top+135
			
			if(spray_timer>0)
				{
				spray_timer=spray_timer-1
				}
			else
				{
				/*
				for(i=0; i<5; i++)
					{
					if(instance_exists(eye[i]))
						{
						instance_destroy(eye[i])
						}
					}
				*/
				spray_dir=spray_dir*-1
				eyes_exists=false
				spray_timer=spray_timer_reset
				ricoshet=7
				current_dir=save_dir
				}
			
			}
		}
	
	if(ricoshet>0)
		{
		if(place_meeting(x+hsp, y, o_floor))
			{
			while(!place_meeting(x+sign(hsp), y, o_floor))
				{
				x=x+sign(hsp)
				}
			
			if(shockwave==false)
				{
				shockwave=true
				with(instance_create_layer(x+((sprite_width/4)*sign(hsp)), y, "depth_player", o_spider_shockwave))
					{
					sprite_index=s_main_shockwave_ver
					image_xscale=sign(other.hsp)
					image_yscale=1
					while(place_meeting(x, y, o_floor))
						{
						x=x-sign(other.hsp)
						}
					vsp=-4
					}
				with(instance_create_layer(x+((sprite_width/4)*sign(hsp)), y, "depth_player", o_spider_shockwave))
					{
					sprite_index=s_main_shockwave_ver
					image_xscale=sign(other.hsp)
					image_yscale=-1
					while(place_meeting(x, y, o_floor))
						{
						x=x-sign(other.hsp)
						}
					vsp=4
					}
				}
				
			hsp=0
			vsp=0
			if(stuck_timer==0)
				{
				stuck_timer=stuck_timer_reset
				shockwave=false
				}
			ricoshet=ricoshet-1
			switch(current_dir)
				{
				case 45:
					{
					current_dir=135
					save_dir=current_dir
					break
					}
				case 135:
					{
					current_dir=45
					save_dir=current_dir
					break
					}
				case 315:
					{
					current_dir=225
					save_dir=current_dir
					break
					}
				case 225:
					{
					current_dir=315
					save_dir=current_dir
					break
					}
				}
			}
		}
		
	x=x+hsp
	
	if(ricoshet>0)
		{
		if(place_meeting(x, y+vsp, o_floor))
			{
			while(!place_meeting(x, y+sign(vsp), o_floor))
				{
				y=y+sign(vsp)
				}
			if(shockwave==false)
				{
				shockwave=true
				with(instance_create_layer(x, y+((sprite_height/4)*sign(vsp)), "depth_player", o_spider_shockwave))
					{
					sprite_index=s_main_shockwave
					image_xscale=-1
					image_yscale=sign(other.vsp)
					while(place_meeting(x, y, o_floor))
						{
						y=y-sign(other.vsp)
						}
					hsp=-4
					}
				with(instance_create_layer(x, y+((sprite_height/4)*sign(vsp)), "depth_player", o_spider_shockwave))
					{
					image_xscale=1
					sprite_index=s_main_shockwave
					image_yscale=sign(other.vsp)
					while(place_meeting(x, y, o_floor))
						{
						y=y-sign(other.vsp)
						}
					hsp=4
					}
				}
				
			hsp=0
			vsp=0
			if(stuck_timer==0)
				{
				stuck_timer=stuck_timer_reset
				shockwave=false
				}
			ricoshet=ricoshet-1
			switch(current_dir)
				{
				case 45:
					{
					current_dir=315
					save_dir=current_dir
					break
					}
				case 135:
					{
					current_dir=225
					save_dir=current_dir
					break
					}
				case 315:
					{
					current_dir=45
					save_dir=current_dir
					break
					}
				case 225:
					{
					current_dir=135
					save_dir=current_dir
					break
					}
				}
			}
		}
	y=y+vsp
	}

/*
with(afterimage1)
	{
	x=lerp(x, other.x, 0.2)
	y=lerp(y, other.y, 0.2)
	}
	
with(afterimage2)
	{
	x=lerp(x, other.afterimage1.x, 0.2)
	y=lerp(y, other.afterimage1.y, 0.2)
	}
*/

hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	if(instance_exists(o_boss_pendulum_eye))
		{
		instance_destroy(o_boss_pendulum_eye)
		}
	//scr_add_score(o_controller.player1, 5000)
	//scr_add_score(o_controller.player2, 5000)
	scr_boss_death(sprite_index, 5, my_next_room)
	}

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}