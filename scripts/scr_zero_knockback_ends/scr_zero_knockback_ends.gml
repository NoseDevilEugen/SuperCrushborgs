function scr_zero_knockback_ends() {
	
	//функции отбрасывания при смерти
	/*
	if(instance_exists(o_safe_spawner))
		{
		if(instance_exists(safe_block))
			{
			if((position_meeting(safe_x, safe_block.bbox_bottom+21, o_raising_acid)
			|| position_meeting(safe_x, safe_y+20, o_raising_acid)))
				{
				safe_x=instance_nearest(x, y, o_safe_spawner).x
				safe_y=instance_nearest(x, y, o_safe_spawner).y
				safe_block=instance_nearest(x, y, o_safe_spawner)
				}
			}
		}
	*/
	
		
	if(!instance_exists(safe_block))
		{
		//show_message("нет сейфблока")
		if(instance_exists(o_safe_spawner))
			{
			safe_block=instance_nearest(x, y, o_safe_spawner)
			}
		}
			
	
	//отбрасывание по горизонтали
	if(primary_action==primary_actions.knockback)
	    {
		dead_counter=dead_counter+1
	    move=0
	    dash_timer=0
	    last_attack=0
	    if(hsp>0)
	        {
			if(dead_counter==20 || dead_counter==40)
				{
		        hsp=hsp-1
				}
	        }
	    if(hsp<0)
	        {
	        if(dead_counter==20 || dead_counter==40)
				{
		        hsp=hsp+1
				}
	        }
			
		//кручение в воздухе
	    if(image_index>=image_number-image_speed)
			{
			image_index=1
			}
			
		//касание пола вызывает стейт "лежим на полу"
		if(((place_meeting(x, y+1, o_floor) || ow_p==true) 
		&& image_index>1 && !place_meeting(x, y, o_raising_acid)))
			{
			if(object_index==o_player)
				{
				s_array[primary_actions.destroyed]=s_panthebot_destroyed
				}
			else
				{
				s_array[primary_actions.destroyed]=s_shinobot_destroyed
				}
			
	
		
			
			//safe_block=instance_place(x, y+1, o_floor)
			image_index=0
			primary_action=primary_actions.destroyed
			}
			
	    }
	
	
	
	//паденине ниже нижней границы комнаты (можно заменить на край вьюпорта и сделать смертельные ямы)
	if(y>o_camera.camera_border_bottom+16 || place_meeting(x, y, o_raising_acid))
		{
		/*
		if(my_lives<2)
			{
			my_lives=my_lives-1
			audio_play_sound(o_controller.sound_array[4], 10, false)
			state=states.dead
			}
		else
			{
		*/
			//last_state=states.airborne
			hsp=0
			vsp=0
			ceiling_rope=false
			ceiling_block=false
			ceiling_acceleration=0
			ceiling_acceleration_stop=0
			ceiling_obj=noone
			if(primary_action!=primary_actions.knockback
			&& primary_action!=primary_actions.destroyed)
				{
				//y=y+10
				//show_message("a1")
				if(object_index==o_player)
					{
					//show_message("работает")
					s_array[primary_actions.destroyed]=s_panthebot_destroyed2
					}
				else
					{
					s_array[primary_actions.destroyed]=s_shinobot_destroyed2
					}
				audio_play_sound(o_controller.sound_array[4], 10, false)
				image_index=0
				primary_action=primary_actions.destroyed
				//my_lives=my_lives-1
				weapon_slot[active_slot]=weapons.machinegun
				
				//state=states.airborne
				}
			if(primary_action==primary_actions.knockback
			|| primary_action==primary_actions.destroyed)
				{
				//show_message("a2")
				if(object_index==o_player)
					{
					s_array[primary_actions.destroyed]=s_panthebot_destroyed2
					}
				else
					{
					s_array[primary_actions.destroyed]=s_shinobot_destroyed2
					}
				if(primary_action!=primary_actions.destroyed)
					{
					image_index=0
					}
				primary_action=primary_actions.destroyed
				
				}
			//primary_action=primary_actions.knockback
			
				//сбрасываем вепон на машинган и помещаем в середине последнего безопасного блока
				//но вообще этот момент лучше бы доработать
				//weapon_slot[active_slot]=weapons.machinegun
			
			
			//}
		}

	if(primary_action==primary_actions.destroyed)
		{
		hsp=0
		vsp=0
		last_move=0
		move=0
		
		if((s_array[primary_actions.destroyed]==s_panthebot_destroyed2 || s_array[primary_actions.destroyed]==s_shinobot_destroyed2)
		&& image_index>=image_number-image_speed)
			{
			if(my_lives<1)
				{
				state=states.dead
				}
				
			if(last_state==states.ceiling
			&& state!=states.dead
			&& safe_block.y<o_camera.camera_border_bottom)
				{
				if(safe_block.object_index==o_floor
				|| safe_block.object_index==o_rope
				|| safe_block.object_index==o_safe_spawner
				|| safe_block.object_index==o_rope_angle
				|| safe_block.object_index==o_rope_angle_mirror
				|| safe_block.object_index==o_slope_ceiling
				|| safe_block.object_index==o_slope_ceiling_mirror
				|| safe_block.object_index==o_block_ship
				|| safe_block.object_index==o_block_complex_ship
				|| safe_block.object_index==o_block_flying_box1
				|| safe_block.object_index==o_block_flying_box2
				|| safe_block.object_index==o_block_flying_box3)
					{
					//show_message("b1")
					if((position_meeting(safe_x, safe_block.bbox_bottom+21, o_raising_acid)) 
					//|| collision_rectangle(bbox_left-16, bbox_top-16, bbox_right+16, bbox_bottom, o_raising_acid, false, false))
					&& instance_exists(o_safe_spawner))
						{
						safe_x=instance_nearest(x, y, o_safe_spawner).x
						safe_y=instance_nearest(x, y, o_safe_spawner).y
						safe_block=instance_nearest(x, y, o_safe_spawner)
						}
					
					x=safe_x
					if(safe_block.object_index!=o_safe_spawner)
						{
						y=safe_block.bbox_bottom+11
						}
					else
						{
						y=safe_block.y+20
						}
					//show_message("веревка!")
					}
				if(safe_block.object_index==o_rope_moving
				|| safe_block.object_index==o_rocket_boss)
					{
					if(position_meeting(safe_x, safe_block.bbox_bottom+21, o_raising_acid)
					&& instance_exists(o_safe_spawner))
						{
						safe_x=instance_nearest(x, y, o_safe_spawner).x
						safe_y=instance_nearest(x, y, o_safe_spawner).y
						safe_block=instance_nearest(x, y, o_safe_spawner)
						}
						
					if(safe_block.hsp==0)
						{
						x=safe_x
						}
					else
						{
						x=(safe_block.bbox_left+safe_block.bbox_right)/2
						}
					if(safe_block.object_index!=o_safe_spawner)
						{
						y=safe_block.bbox_bottom+11
						}
					else
						{
						y=safe_block.y+20
						}
					//show_message("веревка движется!")
					}
				//show_message("ceiling")
				jump_off=false
				ceiling_obj=noone
				ceiling_block=false
				ceiling_rope=false
				jump_off_ceiling=false
				ceiling_acceleration=0
				ceiling_acceleration_stop=0
				
				if(safe_block.object_index!=o_safe_spawner)
					{
					state=states.ceiling
					while(place_meeting(x, y, o_floor))
						{
						y=y+1
						}
					primary_action=primary_actions.ceiling
					}
				else
					{
					x=safe_block.x
					y=safe_block.y
					state=states.airborne
					primary_action=primary_actions.fall
					}
				}
			/*
			else if(last_state==states.wallcling)
				{
				//show_message("wall")
				image_xscale=last_xscale
				x=safe_x
				y=safe_y-12
				state=states.wallcling
				primary_action=primary_actions.wallcling
				}
			*/
			else if(state!=states.dead)
				{
				//show_message("b2")
				//show_message("other")
				
				if((position_meeting(safe_x, safe_y+20, o_raising_acid)
				&& instance_exists(o_safe_spawner))
				|| (o_camera.autoscroll_y==true
				&& o_camera.autoscroll_dir_y<0
				&& safe_y>o_camera.screen_bottom))
					{
					safe_x=instance_nearest(x, y, o_safe_spawner).x
					safe_y=instance_nearest(x, y, o_safe_spawner).y
					safe_block=instance_nearest(x, y, o_safe_spawner)
					}
					
				if(place_meeting(x+24, y, o_hazard)
				|| place_meeting(x-24, y, o_hazard))
					{
					safe_x=instance_nearest(x, y, o_safe_spawner).x
					safe_y=instance_nearest(x, y, o_safe_spawner).y
					safe_block=instance_nearest(x, y, o_safe_spawner)
					}	
					
				//show_message(string(safe_x)+", "+string(safe_y))
				
				if(safe_y<o_camera.camera_border_bottom 
				&& safe_y>o_camera.camera_border_top-16)
					{
					x=safe_x
					y=safe_y
					}
				else
					{
					x=instance_nearest(x, y, o_safe_spawner).x
					y=instance_nearest(x, y, o_safe_spawner).y
					}
				while(place_meeting(x, y, o_floor))
					{
					y=y-1
					}
				primary_action=primary_actions.idle
				}
			invul_time=150
			//image_index=0
			}
		}

	//лежим на полу мертвым
	if(primary_action==primary_actions.destroyed
	&& ((s_array[primary_actions.destroyed]==s_panthebot_destroyed || s_array[primary_actions.destroyed]==s_shinobot_destroyed)))
	    {
		dead_counter=0
	    move=0
		hsp=0
		if(image_index>=image_number-image_speed)
			{
			//геймовер если жизни все
			
			if(my_lives<1)
				{
				state=states.dead
				}
			else
			//воскрешение, если жизни еще есть
				{
					
				if(bbox_right<o_camera.screen_left-32
				|| bbox_left>o_camera.screen_right+32
				|| bbox_bottom<o_camera.screen_top-32
				|| bbox_top>o_camera.screen_bottom+32)
					{
					if(id==o_controller.player1)
						{
						if(instance_exists(o_controller.player2))
							{
							if(o_controller.player2.state!=states.dead)
								{
								x=o_controller.player2.x
								y=o_controller.player2.y
								invul_time=150
								image_index=0
								primary_action=primary_actions.idle
								}
							}
						}
					else if(id==o_controller.player2)
						{
						if(instance_exists(o_controller.player1))
							{
							if(o_controller.player1.state!=states.dead)
								{
								x=o_controller.player1.x
								y=o_controller.player1.y
								invul_time=150
								image_index=0
								primary_action=primary_actions.idle
								}
							}
						}
					}
					
				if(place_meeting(x, y, o_hazard))
					{
					if(last_state==states.ceiling
					&& state!=states.dead)
						{
						if(safe_block.object_index==o_rope_moving
						|| safe_block.object_index==o_rocket_boss)
							{
							if(position_meeting(safe_x, safe_block.bbox_bottom+21, o_raising_acid)
							&& instance_exists(o_safe_spawner))
								{
								safe_x=instance_nearest(x, y, o_safe_spawner).x
								safe_y=instance_nearest(x, y, o_safe_spawner).y
								safe_block=instance_nearest(x, y, o_safe_spawner)
								}
						
							if(safe_block.hsp==0)
								{
								x=safe_x
								}
							else
								{
								x=(safe_block.bbox_left+safe_block.bbox_right)/2
								}
							if(safe_block.object_index!=o_safe_spawner)
								{
								//y=safe_block.bbox_bottom+11-safe_block.vsp
								y=safe_block.bbox_bottom
								}
							else
								{
								y=safe_block.y+20
								}
							//show_message("веревка движется!")
							}	
						}
					else
						{
						x=safe_x
						y=safe_y
						}
					}
				//x=safe_block.x+(safe_block.sprite_width)/2
				//y=safe_block.y-64
				//show_message("b3")
				invul_time=150
				image_index=0
				primary_action=primary_actions.idle
				}
			}
		}
	
	//моргание неуязвимости
	if(invul_time>0)
		{
		invul_time=invul_time-1
		}
}
