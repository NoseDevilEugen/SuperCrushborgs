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
		
	pair=collision_line(x, y, x+(image_xscale*400), y, o_electric_generator_hor, false, true)
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
		&& collision_line(x, y, pair.x, pair.y, o_player_skelet, false, false).my_player.primary_action!=primary_actions.teleport)
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
			with(instance_create(x-(2*image_xscale), y, o_spider_shockwave))
				{
				image_xscale=other.image_xscale
				image_yscale=-1
				sprite_index=s_electric_run_wall
				if(place_meeting(x, y, o_floor))
					{
					while(place_meeting(x, y, o_floor))
						{
						x=x+sign(image_xscale)
						}
					}
				//sprite_index=s_electric_run
				vsp=-6
				}
			with(instance_create(x-(2*image_xscale), y, o_spider_shockwave))
				{
				sprite_index=s_electric_run_wall
				image_yscale=1
				image_xscale=other.image_xscale
				if(place_meeting(x, y, o_floor))
					{
					while(place_meeting(x, y, o_floor))
						{
						x=x+sign(image_xscale)
						}
					}
				vsp=6
				}
			}
		if(image_index>=image_number-1)
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
			with(instance_create(x+(5*image_xscale), y, o_joe_boss_grenade_small))
				{
				sprite_index=s_spark
				hsp=abs(1)*other.image_xscale
				vsp=-5
				}
			with(instance_create(x+(5*image_xscale), y-5, o_joe_boss_grenade_small))
				{
				sprite_index=s_spark
				hsp=abs(1.5)*other.image_xscale
				vsp=-5
				}
			with(instance_create(x+(5*image_xscale), y-10, o_joe_boss_grenade_small))
				{
				sprite_index=s_spark
				hsp=abs(2)*other.image_xscale
				vsp=-4
				}
			}
		}
	
	if(hp<=0)
		{
		if(action!=gen_actions.broken)
			{
			with(instance_create(x+(5*image_xscale), y, o_joe_boss_grenade_small))
				{
				sprite_index=s_spark
				hsp=abs(1)*other.image_xscale
				vsp=-5
				}
			with(instance_create(x+(5*image_xscale), y-5, o_joe_boss_grenade_small))
				{
				sprite_index=s_spark
				hsp=abs(1.5)*other.image_xscale
				vsp=-5
				}
			with(instance_create(x+(5*image_xscale), y-10, o_joe_boss_grenade_small))
				{
				sprite_index=s_spark
				hsp=abs(2)*other.image_xscale
				vsp=-4
				}
			if(instance_exists(target))
				{
				instance_destroy(target)
				}
			image_index=0
			image_speed=0.1
			action=gen_actions.broken
			instance_change(o_electric_generator_hor_broken, false)
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