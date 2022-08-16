/// @description Insert description here
// You can write your code in this editor

if(x>o_camera.screen_left
&& x<o_camera.screen_right
&& y>o_camera.screen_top 
&& y<o_camera.screen_bottom)
    {
	AI_active=true
    }

if(AI_active==true)
	{
	
	pair=collision_line(x, y, x, y-(image_yscale*300), o_electric_generator_ver, false, true)
	if(instance_exists(pair) && pair!=noone && pair.action!=gen_actions.broken)
		{
		if(frame_counter<4)
			{
			frame_counter=frame_counter+0.2
			}
		else
			{
			frame_counter=0
			}
		pair.AI_active=true
		action=gen_actions.line
		if(collision_line(x, y, pair.x, pair.y, o_player_skelet, false, false)
		&& collision_line(x, y, pair.x, pair.y, o_player_skelet, false, false).my_player.invul_time<=0
		&& collision_line(x, y, pair.x, pair.y, o_player_skelet, false, false).my_player.state!=states.dead
		&& collision_line(x, y, pair.x, pair.y, o_player_skelet, false, false).my_player.primary_action!=primary_actions.knockback
		&& collision_line(x, y, pair.x, pair.y, o_player_skelet, false, false).my_player.primary_action!=primary_actions.destroyed
		&& collision_line(x, y, pair.x, pair.y, o_player_skelet, false, false).my_player.primary_action!=primary_actions.teleport
		)
			{
			with(collision_line(x, y, pair.x, pair.y, o_player_skelet, false, false).my_player)
				{
				scr_take_damage()
				}
			}	
		}
	else
		{
		pair=noone
		}
		
	if(pair==noone && action==gen_actions.line)
		{
		image_index=0
		action=gen_actions.charging
		}
		
		
	if(action==gen_actions.charging)
		{
		if(image_index>=image_number-0.5)
			{
			//image_index=0
			action=gen_actions.attack
			image_index=0
			}
		}
		
	if(action==gen_actions.attack)
		{
		if(image_index>=11 && image_index<11+(image_speed))
			{
			with(instance_create(x, y+(30*image_yscale), o_spider_shockwave))
				{
				image_xscale=-1
				image_yscale=other.image_yscale
				sprite_index=s_electric_run
				if(place_meeting(x, y, o_floor))
					{
					while(place_meeting(x, y, o_floor))
						{
						y=y-sign(image_yscale)
						}
					}
				//sprite_index=s_electric_run

				hsp=-6
				}
			with(instance_create(x, y+(30*image_yscale), o_spider_shockwave))
				{
				image_xscale=1
				image_yscale=other.image_yscale
				sprite_index=s_electric_run
				if(place_meeting(x, y, o_floor))
					{
					while(place_meeting(x, y, o_floor))
						{
						y=y-sign(image_yscale)
						}
					}
				
				
				hsp=6
				}
			}
		if(image_index>=image_number-0.5)
			{
			image_index=0
			action=gen_actions.charging
			}
		}
	
	if(action!=gen_actions.broken)
		{
		hp=scr_boss_get_damage(hp)
		}
	else
		{
		if(image_index>=11 && image_index<11+image_speed)
			{
			if(image_yscale>0)
				{
				with(instance_create(x, y, o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=-2*other.image_xscale
					vsp=(-5*other.image_yscale)
					}
				with(instance_create(x, y+(5*image_xscale), o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=-1*other.image_xscale
					vsp=(-4*other.image_yscale)
					}
				with(instance_create(x, y+(5*image_xscale), o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=1*other.image_xscale
					vsp=(-4*other.image_yscale)
					}
				}
			else
				{
				with(instance_create(x, y, o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=-0.5
					vsp=0
					}
				with(instance_create(x, y+(5*image_xscale), o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=0.5
					vsp=0
					}
				with(instance_create(x, y+(5*image_xscale), o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=0
					vsp=0
					}
				}
			}
		}
	
	if(hp<=0)
		{
		if(action!=gen_actions.broken)
			{
			if(image_yscale>0)
				{
				with(instance_create(x, y, o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=-2*other.image_xscale
					vsp=(-5*other.image_yscale)
					}
				with(instance_create(x, y+(5*image_xscale), o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=-1*other.image_xscale
					vsp=(-4*other.image_yscale)
					}
				with(instance_create(x, y+(5*image_xscale), o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=1*other.image_xscale
					vsp=(-4*other.image_yscale)
					}
				}
			else
				{
				with(instance_create(x, y, o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=-0.5
					vsp=0
					}
				with(instance_create(x, y+(5*image_xscale), o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=0.5
					vsp=0
					}
				with(instance_create(x, y+(5*image_xscale), o_joe_boss_grenade_small))
					{
					sprite_index=s_spark
					hsp=0
					vsp=0
					}
				}
			if(instance_exists(target))
				{
				instance_destroy(target)
				}
				
			image_index=0
			image_speed=0.1
			action=gen_actions.broken
			//mask_index=s_blank
			//object_set_parent()
			instance_change(o_electric_generator_ver_broken, false)
			}
		//scr_boss_death(sprite_index, 1, my_next_room)
		}
	
	if(instance_exists(target))
		{
		target.x=x
		target.y=y
		}
	
	
	}
	
sprite_index=s_array[action]