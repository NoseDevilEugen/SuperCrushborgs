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
	if(action==gen_actions.charging)
		{
		if(image_index>=image_number-1)
			{
			//image_index=0
			action=gen_actions.attack
			image_index=0
			}
		}
		
	if(action==gen_actions.attack)
		{
		if(image_index>=9 && image_index<9+(image_speed))
			{
			with(instance_create(x, y+(20*image_yscale), o_spider_shockwave))
				{
				sprite_index=s_electric_run
				image_xscale=-1
				image_yscale=other.image_yscale
				hsp=-6
				}
			with(instance_create(x, y+(20*image_yscale), o_spider_shockwave))
				{
				sprite_index=s_electric_run
				image_xscale=1
				image_yscale=other.image_yscale
				hsp=6
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
	else if((x>o_camera.screen_left
		&& x<o_camera.screen_right
		&& y>o_camera.screen_top 
		&& y<o_camera.screen_bottom))
		{
		if(image_index>=10 && image_index<10+image_speed)
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
		if(action!=gen_actions.broken
		&& (x>o_camera.screen_left
		&& x<o_camera.screen_right
		&& y>o_camera.screen_top 
		&& y<o_camera.screen_bottom))
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