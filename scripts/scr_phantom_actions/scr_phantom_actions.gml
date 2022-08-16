// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_phantom_actions(){
	
	if(player_change_timer>0)
		{
		player_change_timer=player_change_timer-1
		}
	else
		{
		if(action==phantom_actions.idle)
			{
			if(phase==1)
				{
				player_change_timer=300
				}
			else
				{
				player_change_timer=180
				}
			if(player!=o_controller.player2)
				{
				if(o_controller.player2!=noone && o_controller.player1!=noone)
					{
					if(o_controller.player2.state!=states.dead)
						{
						player=o_controller.player2
						}
					}
				}
			else if(player!=o_controller.player1)
				{
				if(o_controller.player2!=noone && o_controller.player1!=noone)
					{
					if(o_controller.player1.state!=states.dead)
						{
						player=o_controller.player1
						}
					}
				}
			}
		}

	if(fuma_timer>0)
		{
		fuma_timer=fuma_timer-1
		}
		
	if(dash_timer>0)
		{
		dash_timer=dash_timer-1
		}
		
	if(helm_timer>0)
		{
		helm_timer=helm_timer-1
		}
	
	if(action==phantom_actions.rage && image_index>=image_number-image_speed)
		{
		image_index=7
		action=phantom_actions.idle
		phase=2
		}
	
	
	if(phase==1)
		{
		if(action==phantom_actions.idle)
			{
			
			if(image_index>=2 && image_index<=2.2)
				{
				if(-sign(x-player.x)!=0)
					{
					image_xscale=-sign(x-player.x)
					}
				}
			
			hsp=0
			if(hp<200)
				{
				hsp=0
				vsp=0
				instance_destroy(o_boss_phantom_anchor)
				image_index=0
				if(-sign(x-player.x)!=0)
					{
					image_xscale=-sign(x-player.x)
					}
				action=phantom_actions.rage
				}
			
			
			if(instance_exists(o_boss_phantom_anchor))
				{
				teleport_timer=teleport_timer+1
				if(player.primary_action!=primary_actions.knockback
				&& player.primary_action!=primary_actions.destroyed
				&& teleport_timer>=20)
					{
					action=phantom_actions.teleport
					image_index=0
					}
				}
		
		
			if(image_index>=image_number-image_speed
			&& image_xscale==-sign(x-player.x)
			&& player.state!=states.ceiling)
				{
				if(abs(y-player.y)<20)
					{
					if(point_distance(x, y, player.x, player.y)<100)
						{
						if(dash_timer<=0)
							{
							dash_timer=180
							action=phantom_actions.dash
							image_index=0
							}
						else
							{
							action=phantom_actions.jump
							vsp=-6
							hsp=3*player.image_xscale
							//hsp=7*image_xscale
							image_index=0
							}
						}
					if((point_distance(x, y, player.x, player.y)<300) 
					&& (point_distance(x, y, player.x, player.y)>=100))
						{
						if(fuma_timer<=0)
							{
							fuma_timer=360
							action=phantom_actions.fuma_throm
							image_index=0
							}
						else
							{
							action=phantom_actions.jump
							vsp=-6
							hsp=3*image_xscale
							//hsp=7*image_xscale
							image_index=0
							}
						}
					if(point_distance(x, y, player.x, player.y)>=300)
						{
						action=phantom_actions.jump
						vsp=-3
						hsp=3*image_xscale
						//hsp=7*image_xscale
						image_index=0
						}
					}
			
				else
					{
					vsp=-6
					hsp=3*image_xscale
					action=phantom_actions.jump
					}

				}
			
				
			
			if(abs(x-player.x)<=3
			&& image_index>=image_number-image_speed)
				{
				if(player.state==states.wallcling)
					{
					vsp=-7
					hsp=3*-player.image_xscale
					action=phantom_actions.jump
					}
				}
			
			if(image_index>=image_number-image_speed
			&& player.state==states.ceiling)
				{
				action=phantom_actions.upward_attack
				image_index=0
				}
			
			}
		
		if(action==phantom_actions.dash)
			{
			if(image_index>3 && image_index<image_number-1)
				{
				hsp=4*image_xscale
				}
			else
				{
				hsp=0
				}
			
			if(image_index>=7.2 && image_index<=7.4)
				{
				instance_create(x+(25*image_xscale), y+16, o_boss_phantom_sword)
				}
		
			if(instance_exists(o_boss_phantom_sword))
				{
				if(image_index>8)
					{
					instance_destroy(o_boss_phantom_sword)
					}
				else
					{
					o_boss_phantom_sword.x=x+(25*image_xscale)
					o_boss_phantom_sword.y=y+16
					}
				}
		
			if(image_index>=image_number-image_speed)
				{
				/*
				if(sign(x-player.x)!=0)
					{
					image_xscale=-sign(x-player.x)
					}
				*/
				image_index=0
				action=phantom_actions.idle
				}
			}
		else
			{
			if(instance_exists(o_boss_phantom_sword))
				{
				instance_destroy(o_boss_phantom_sword)
				}
			}
		
		if(action==phantom_actions.jump)
			{
			if(vsp==0 
			&& image_xscale==-sign(x-player.x)
			&& abs(x-player.x)>50)
				{
				action=phantom_actions.kunai_throw
				image_index=0
				hsp=0
				vsp=-2
				}
			if(abs(x-player.x)<20 && bbox_bottom<player.bbox_top-60)
				{
				image_index=0
				action=phantom_actions.helmcrusher
				}
			if(vsp>0)
				{
				action=phantom_actions.fall
				image_index=0
				}
		
			}
		
		if(action==phantom_actions.kunai_throw)
			{
		
			if(image_index>=3 && image_index<=3.1)
				{
				teleport_timer=0
				instance_destroy(o_boss_phantom_anchor)
			
				with(instance_create(x+10*image_xscale, y-5, o_boss_phantom_kunai))
					{
					dir=point_direction(x, y, other.player.x+(other.player.hsp*2), other.player.y+other.player.vsp)
					hsp=lengthdir_x(bullet_speed+2, dir)
					vsp=lengthdir_y(bullet_speed+2, dir)
					}
				

				with(instance_create(x+30*image_xscale, y-20, o_boss_phantom_anchor))
					{
					dir=point_direction(x, y, other.player.x, y+20)
					hsp=lengthdir_x(bullet_speed, dir)
					vsp=lengthdir_y(bullet_speed, dir)
					}

				
				}
			
			
			if(image_index>=image_number-image_speed)
				{
				action=phantom_actions.fall
				image_index=0
				}
			}
	
		if(instance_exists(o_boss_phantom_anchor)
		&& (player.primary_action==primary_actions.knockback
		|| player.primary_action==primary_actions.destroyed)
		&& action!=phantom_actions.teleport)
			{
			instance_destroy(o_boss_phantom_anchor)
			}
	
		if(action==phantom_actions.fall)
			{
			if(place_meeting(x, y+1, o_floor))
				{
				action=phantom_actions.idle
				image_index=0
				}
			if(abs(x-player.x)<30 && bbox_bottom<player.bbox_top-60)
				{
				image_index=0
				action=phantom_actions.helmcrusher
				}
		
			if(instance_exists(o_boss_phantom_anchor))
				{
				teleport_timer=teleport_timer+1
				if(player.primary_action!=primary_actions.knockback
				&& player.primary_action!=primary_actions.destroyed
				&& teleport_timer>=20)
					{
					action=phantom_actions.teleport
					image_index=0
					}
				}	
			}
		
		if(action==phantom_actions.fuma_throm)
			{
			hsp=0
			if(image_index>=image_number-image_speed)
				{
				action=phantom_actions.idle
				image_index=0
				}
		
			if(image_index>=3 && image_index<=3.1)
				{
				with(instance_create(x+10*image_xscale, y+5, o_boss_phantom_fuma))
					{
					//dir=point_direction(x, y, player.x, player.y)
					hsp=6*other.image_xscale
					}
				}	
			}
		
		if(action==phantom_actions.teleport)
			{
			hsp=0
			vsp=0
			if(image_index>=image_number-image_speed)
				{
				x=o_boss_phantom_anchor.x
				y=o_boss_phantom_anchor.y
				instance_destroy(o_boss_phantom_anchor)
				if(-sign(x-player.x)!=0)
					{
					image_xscale=-sign(x-player.x)
					}
				action=phantom_actions.fall
				image_index=0
				}
			}
	
		if(action==phantom_actions.helmcrusher)
			{
			hsp=0
			helmcrusher_timer=helmcrusher_timer+1
			if(helmcrusher_timer<20)
				{
				vsp=0
				}
			else
				{
				vsp=16
				}
		
			if(place_meeting(x, y+1, o_floor))
				{
				action=phantom_actions.posthelmcrusher
				image_index=0
				}
			}
	
		if(action==phantom_actions.posthelmcrusher)
			{
			hsp=0
			helmcrusher_timer=0
			if(image_index>=image_number-image_speed)
				{
				if(instance_exists(o_boss_phantom_anchor))
					{
					action=phantom_actions.teleport
					image_index=0
					}
				else
					{
					action=phantom_actions.idle
					image_index=0
					}
				}
			}
		
		if(action==phantom_actions.upward_attack)
			{
			hsp=0
		
			if(image_index>=3 && image_index<=3.1)
				{
				with(instance_create(x, bbox_top, o_w_boss_big_bullet))
					{
					sprite_index=s_phantom_kunai
					image_xscale=2
					image_yscale=2
					hsp=lengthdir_x(bullet_speed, 90)
					vsp=lengthdir_y(bullet_speed, 90)
					}
				}
		
			if(image_index>=image_number-image_speed)
				{
				action=phantom_actions.idle
				image_index=0
				}
			}
		
		}
	//phase 2 starts here
	else
		{
		if(action==phantom_actions.idle)
			{
			image_index=clamp(image_index, 6, image_number)	
			
			hsp=0
			if(instance_exists(o_boss_phantom_anchor))
				{
				teleport_timer=teleport_timer+1
				if(player.primary_action!=primary_actions.knockback
				&& player.primary_action!=primary_actions.destroyed
				&& teleport_timer>=20)
					{
					action=phantom_actions.teleport
					image_index=0
					}
				}
		
		
			if(image_index>=image_number-image_speed
			&& image_xscale==-sign(x-player.x)
			&& player.state!=states.ceiling)
				{

				if(abs(y-player.y)<20)
					{
					if(point_distance(x, y, player.x, player.y)<150)
						{
						if(dash_timer<=0)
							{
							dash_timer=120
							instance_destroy(o_boss_phantom_anchor)
							teleport_timer=20
							with(instance_create(x+30*image_xscale, y-30, o_boss_phantom_anchor))
								{
								dir=point_direction(x, y, other.player.x, 0)
								hsp=lengthdir_x(bullet_speed, dir)
								vsp=lengthdir_y(bullet_speed, dir)
								}
							
							action=phantom_actions.dash
							image_index=2
							}
						else
							{
							action=phantom_actions.jump
							vsp=-6
							hsp=4*player.image_xscale
							//hsp=7*image_xscale
							image_index=0
							}
						}
					if((point_distance(x, y, player.x, player.y)<300) 
					&& (point_distance(x, y, player.x, player.y)>=150))
						{
						if(fuma_timer<=0)
							{
							fuma_timer=180
							action=phantom_actions.fuma_throm
							image_index=1
							}
						else
							{
							action=phantom_actions.jump
							vsp=-6
							hsp=4*image_xscale
							//hsp=7*image_xscale
							image_index=0
							}
						}
					if(point_distance(x, y, player.x, player.y)>=300)
						{
						action=phantom_actions.jump
						vsp=-3
						hsp=4*image_xscale
						//hsp=7*image_xscale
						image_index=0
						}
					}
			
				else
					{
					vsp=-6
					hsp=4*image_xscale
					action=phantom_actions.jump
					}

				}
			
			if(abs(x-player.x)<=10
			&& image_index>=image_number-image_speed)
				{
				if(player.state==states.wallcling)
					{
					vsp=-7
					hsp=5*-player.image_xscale
					action=phantom_actions.jump
					}
				}
			
			if(image_index>=image_number-image_speed
			&& player.state==states.ceiling)
				{
				action=phantom_actions.upward_attack
				image_index=1
				}
			
			
			if((image_index>=2 && image_index<=2.2) || (image_index>=7.6 && image_index<=7.8))
				{
				if(-sign(x-player.x)!=0)
					{
					image_xscale=-sign(x-player.x)
					}
				}	
			}
		
		if(action==phantom_actions.dash)
			{
			if(image_index>3 && image_index<image_number-1)
				{
				hsp=5*image_xscale
				}
			else
				{
				hsp=0
				}
			
			if(image_index>=7.2 && image_index<=7.3)
				{
				instance_create(x+(25*image_xscale), y+16, o_boss_phantom_sword)
				}
		
			if(instance_exists(o_boss_phantom_sword))
				{
				if(image_index>8)
					{
					instance_destroy(o_boss_phantom_sword)
					}
				else
					{
					o_boss_phantom_sword.x=x+(25*image_xscale)
					o_boss_phantom_sword.y=y+16
					}
				}
		
			if(image_index>=image_number-image_speed)
				{
				/*
				if(sign(x-player.x)!=0)
					{
					image_xscale=-sign(x-player.x)
					}
				*/
				image_index=7.4
				action=phantom_actions.idle
				}
			}
		else
			{
			if(instance_exists(o_boss_phantom_sword))
				{
				instance_destroy(o_boss_phantom_sword)
				}
			}
		
		if(action==phantom_actions.jump)
			{
			if(vsp==0 
			&& image_xscale==-sign(x-player.x)
			&& abs(x-player.x)>80)
				{
				action=phantom_actions.kunai_throw
				image_index=0
				hsp=0
				vsp=-2
				}
			if(abs(x-player.x)<20 
			&& bbox_bottom<player.bbox_top-30
			&& helm_timer<=0)
				{
				image_index=0
				helm_timer=180
				action=phantom_actions.helmcrusher
				}
			if(vsp>0)
				{
				action=phantom_actions.fall
				image_index=0
				}
		
			}
		
		if(action==phantom_actions.kunai_throw)
			{
		
			if(image_index>=3 && image_index<=3.1)
				{
				teleport_timer=0
				instance_destroy(o_boss_phantom_anchor)
			
				with(instance_create(x+10*image_xscale, y-5, o_boss_phantom_kunai))
					{
					sprite_index=s_phantom_kunai_explosive
					timer=-20
					dir=point_direction(x, y, other.player.x+(other.player.hsp*2), other.player.y+other.player.vsp)
					hsp=lengthdir_x(bullet_speed, dir)
					vsp=lengthdir_y(bullet_speed, dir)
					}
				/*	
				with(instance_create(x+20*image_xscale, y-10, o_boss_phantom_kunai))
					{
					dir=point_direction(x, y, player.x+(player.hsp*2), player.y+player.vsp)+30*(other.image_xscale)
					hsp=lengthdir_x(bullet_speed+2, dir)
					vsp=lengthdir_y(bullet_speed+2, dir)
					}
*/
				with(instance_create(x+30*image_xscale, y, o_boss_phantom_anchor))
					{
					dir=point_direction(x, y, other.player.x, y+20)
					hsp=lengthdir_x(bullet_speed+3, dir)
					vsp=lengthdir_y(bullet_speed+3, dir)
					}
				
				}
			
			
			if(image_index>=image_number-image_speed)
				{
				action=phantom_actions.fall
				image_index=0
				}
			}
	
		if(instance_exists(o_boss_phantom_anchor)
		&& (player.primary_action==primary_actions.knockback
		|| player.primary_action==primary_actions.destroyed)
		&& action!=phantom_actions.teleport)
			{
			instance_destroy(o_boss_phantom_anchor)
			}
	
		if(action==phantom_actions.fall)
			{
			if(place_meeting(x, y+1, o_floor))
				{
				image_index=7.4
				action=phantom_actions.idle
				}
			if(abs(x-player.x)<30 
			&& bbox_bottom<player.bbox_top-30
			&& helm_timer<=0)
				{
				image_index=0
				action=phantom_actions.helmcrusher
				}
		
			if(instance_exists(o_boss_phantom_anchor))
				{
				teleport_timer=teleport_timer+1
				if(player.primary_action!=primary_actions.knockback
				&& player.primary_action!=primary_actions.destroyed
				&& teleport_timer>=20)
					{
					action=phantom_actions.teleport
					image_index=0
					}
				}	
			}
		
		if(action==phantom_actions.fuma_throm)
			{
			hsp=0
			if(image_index>=image_number-image_speed)
				{
				image_index=7.4
				action=phantom_actions.idle
				}
		
			if(image_index>=3 && image_index<=3.1)
				{
				with(instance_create(x+10*image_xscale, y+5, o_boss_phantom_fuma))
					{
					//dir=point_direction(x, y, player.x, player.y)
					hsp=6*other.image_xscale
					}
				instance_destroy(o_boss_phantom_anchor)
	
				teleport_timer=20
				with(instance_create(x+30*image_xscale, y-35, o_boss_phantom_anchor))
					{
					if(other.image_xscale==1)
						{
						dir=10
						}
					else
						{
						dir=170
						}
					hsp=lengthdir_x(bullet_speed+3, dir)
					vsp=lengthdir_y(bullet_speed+3, dir)
					}	
					
					
				}	
			}
		
		if(action==phantom_actions.teleport)
			{
			hsp=0
			vsp=0
			if(image_index>=image_number-image_speed)
				{
				x=o_boss_phantom_anchor.x
				y=o_boss_phantom_anchor.y
				instance_destroy(o_boss_phantom_anchor)
				if(-sign(x-player.x)!=0)
					{
					image_xscale=-sign(x-player.x)
					}
				if(player.state==states.grounded && y<player.y-10)
					{
					action=phantom_actions.helmcrusher
					image_index=0
					}
				else
					{
					action=phantom_actions.fall
					image_index=0
					}
				}
			}
	
		if(action==phantom_actions.helmcrusher)
			{
			hsp=0
			helmcrusher_timer=helmcrusher_timer+1
			if(helmcrusher_timer<10)
				{
				vsp=0
				}
			else
				{
				vsp=16
				}
		
			if(place_meeting(x, y+1, o_floor))
				{
				with(instance_create(x, bbox_bottom-5, o_spider_shockwave))
					{
					image_xscale=-1
					image_yscale=1
					hsp=-4
					}
				with(instance_create(x, bbox_bottom-5, o_spider_shockwave))
					{
					image_xscale=1
					image_yscale=1
					hsp=4
					}
				image_index=3
				action=phantom_actions.posthelmcrusher
				}
			}
	
		if(action==phantom_actions.posthelmcrusher)
			{
			hsp=0
			helmcrusher_timer=0
			if(image_index>=image_number-image_speed)
				{
				if(instance_exists(o_boss_phantom_anchor))
					{
					action=phantom_actions.teleport
					image_index=0
					}
				else
					{
					image_index=7.6
					action=phantom_actions.idle
					
					}
				}
			}
		
		if(action==phantom_actions.upward_attack)
			{
			hsp=0
			vsp=0
			if(image_index>=2 && image_index<=2.1)
				{
				with(instance_create(x, bbox_top, o_w_boss_big_bullet))
					{
					sprite_index=s_phantom_kunai
					image_xscale=2
					image_yscale=2
					hsp=lengthdir_x(bullet_speed+2, 90)
					vsp=lengthdir_y(bullet_speed+2, 90)
					}
				}
		
			if(image_index>=image_number-image_speed)
				{
				image_index=7.4
				action=phantom_actions.idle
				}
			}
		
		}
		
	
	if(instance_exists(target))
		{
		target.x=x
		target.y=y
		}
	
	if(action!=phantom_actions.teleport 
	&& action!=phantom_actions.rage)
		{
		hp=scr_boss_get_damage(hp)
		}
		
	if(action==phantom_actions.rage)
		{
		var _list = ds_list_create()
		var _num = instance_place_list(x, y, o_parent_bullet, _list, false)
		if (_num > 0)
		    {
		    for (var i = 0; i < _num; i++)
		        {
				//hitpoints=hitpoints-_list[| i].firepower
				//hit_confirm=true
				//hit_timer=5
				if(_list[|i].object_index!=o_energygun_explosion)
					{
			        instance_destroy(_list[| i], true)
					}		
		        }
		    }
		ds_list_destroy(_list)
		}
		
	if(hp<=0)
		{
		instance_destroy(o_boss_phantom_kunai)
		instance_destroy(o_boss_phantom_fuma)
		instance_destroy(o_boss_phantom_anchor)
		instance_destroy(o_boss_phantom_sword)
		scr_boss_death(sprite_index, 3, my_next_room)
		}

}