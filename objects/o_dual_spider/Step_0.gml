/// @description Insert description here
// You can write your code in this editor

if(player_change_timer>0)
	{
	player_change_timer=player_change_timer-1
	}
else
	{
	if(dual_spider_action==dual_spider_actions.move)
		{
		
			
		player_change_timer=300
		if(player==o_controller.player1)
			{
			if(o_controller.player2!=noone && o_controller.player1!=noone)
				{
				if(o_controller.player2.state!=states.dead)
					{
					player=o_controller.player2
					}
				}
			}
		else if(player==o_controller.player2)
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


if(dual_spider_action==dual_spider_actions.move)
	{
	
	if(timer_web_shot>0)
		{
		timer_web_shot=timer_web_shot-1
		}
	else
		{
		timer_web_shot=180
		}
	
	if(vsp!=0)
		{
		if(grenade_timer>0)
			{
			grenade_timer=grenade_timer-1
			}
		else
			{
			with(instance_create(x, y, o_grenade_small))
				{
				image_xscale=other.image_xscale
				hsp=other.grenade_hsp*other.image_xscale
				vsp=other.grenade_vsp
				}
			grenade_timer=120
			}
		}
		
	web[0].x=x
	web[0].y=y
	web[1].x=x
	web[1].y=y
	web[2].x=x
	web[2].y=y
	web[3].x=x
	web[3].y=y
	web[4].x=x
	web[4].y=y
	
	web[0].start_x=x
	web[0].start_y=y
	web[1].start_x=x
	web[1].start_y=y
	web[2].start_x=x
	web[2].start_y=y
	web[3].start_x=x
	web[3].start_y=y
	web[4].start_x=x
	web[4].start_y=y
	
	web[0].onscreen=false
	web[1].onscreen=false
	web[2].onscreen=false
	web[3].onscreen=false
	web[4].onscreen=false
	
	
		if(instance_number(o_dual_spider)!=2 && phase!=2)
			{
			phase=2
			movespeed=sign(movespeed)*2
			timer_web_change=30
			}
		vsp=movespeed
		
	}
	
	
if(dual_spider_action==dual_spider_actions.move)
	{
	if((sign(movespeed)==1 
	|| sign(movespeed)==-1)
	&& timer_web_shot<=0)
		{
		web[0].connected=false
		web[1].connected=false
		web[2].connected=false
		web[3].connected=false
		web[4].connected=false
	
		player_dir=point_direction(x, y, (player.skelet.bbox_left+player.skelet.bbox_right)/2+player.hsp, (player.skelet.bbox_top+player.skelet.bbox_bottom)/2+player.vsp)
		
		dir[0]=player_dir
		dir[1]=player_dir-irandom_range(15, 30)
		dir[2]=player_dir+irandom_range(15, 30)
		dir[3]=player_dir-irandom_range(30, 60)
		dir[4]=player_dir+irandom_range(30, 60)
		dual_spider_action=dual_spider_actions.shoot_web
		}	
	}
	
	
if(dual_spider_action==dual_spider_actions.shoot_web)
	{
	image_speed=0
	vsp=0
	
	web[0].start_x=x
	web[0].start_y=y
	web[1].start_x=x
	web[1].start_y=y
	web[2].start_x=x
	web[2].start_y=y
	web[3].start_x=x
	web[3].start_y=y
	web[4].start_x=x
	web[4].start_y=y
	
	web[0].sprite_web=s_spider_web
	web[1].sprite_web=s_spider_web
	web[2].sprite_web=s_spider_web
	web[3].sprite_web=s_spider_web
	web[4].sprite_web=s_spider_web
			

	
	if(phase==1)
		{
		web[0].onscreen=true
		web[1].onscreen=true
		web[2].onscreen=true
		web[3].onscreen=false
		web[4].onscreen=false
		with(web[0])
			{
			if(connected==false)
				{
				hsp=lengthdir_x(bullet_speed, other.dir[0])
				vsp=lengthdir_y(bullet_speed, other.dir[0])
				}
			}
		with(web[1])
			{
			if(connected==false)
				{
				hsp=lengthdir_x(bullet_speed, other.dir[1])
				vsp=lengthdir_y(bullet_speed, other.dir[1])
				}
			}
		with(web[2])
			{
			if(connected==false)
				{
				hsp=lengthdir_x(bullet_speed, other.dir[2])
				vsp=lengthdir_y(bullet_speed, other.dir[2])
				}
			}
		if(web[0].connected==true
		&& web[1].connected==true
		&& web[2].connected==true)
			{
			timer_web_change=timer_web_change-1
			}
		if(timer_web_change<=0)
			{
			dual_spider_action=dual_spider_actions.attack_web
			timer_web_change=60
			}
		}
	if(phase==2)
		{
		web[0].onscreen=true
		web[1].onscreen=true
		web[2].onscreen=true
		web[3].onscreen=true
		web[4].onscreen=true
		with(web[0])
			{
			if(connected==false)
				{
				hsp=lengthdir_x(bullet_speed+5, other.dir[0])
				vsp=lengthdir_y(bullet_speed+5, other.dir[0])
				}
			}
		with(web[1])
			{
			if(connected==false)
				{
				hsp=lengthdir_x(bullet_speed+5, other.dir[1])
				vsp=lengthdir_y(bullet_speed+5, other.dir[1])
				}
			}
		with(web[2])
			{
			if(connected==false)
				{
				hsp=lengthdir_x(bullet_speed+5, other.dir[2])
				vsp=lengthdir_y(bullet_speed+5, other.dir[2])
				}
			}
		with(web[3])
			{
			if(connected==false)
				{
				hsp=lengthdir_x(bullet_speed+5, other.dir[3])
				vsp=lengthdir_y(bullet_speed+5, other.dir[3])
				}
			}
		with(web[4])
			{
			if(connected==false)
				{
				hsp=lengthdir_x(bullet_speed+5, other.dir[4])
				vsp=lengthdir_y(bullet_speed+5, other.dir[4])
				}
			}
			
		if(web[0].connected==true
		&& web[1].connected==true
		&& web[2].connected==true
		&& web[3].connected==true
		&& web[4].connected==true)
			{
			timer_web_change=timer_web_change-1
			}
		if(timer_web_change<=0)
			{
			dual_spider_action=dual_spider_actions.attack_web

			timer_web_change=60
			}
		}
	}
	
if(dual_spider_action==dual_spider_actions.attack_web)
	{
	var i
	for(i=0; i<4; i++)
		{
		if(collision_line(x, y, web[i].x, web[i].y, o_player_skelet, false, false)
		&& collision_line(x, y, web[i].x, web[i].y, o_player_skelet, false, false).my_player.invul_time<=0
		&& collision_line(x, y, web[i].x, web[i].y, o_player_skelet, false, false).my_player.state!=states.dead
		&& collision_line(x, y, web[i].x, web[i].y, o_player_skelet, false, false).my_player.primary_action!=primary_actions.knockback
		&& collision_line(x, y, web[i].x, web[i].y, o_player_skelet, false, false).my_player.primary_action!=primary_actions.destroyed
		&& collision_line(x, y, web[i].x, web[i].y, o_player_skelet, false, false).my_player.primary_action!=primary_actions.teleport
		)
			{
			with(collision_line(x, y, web[i].x, web[i].y, o_player_skelet, false, false).my_player)
				{
				scr_take_damage()
				}
			}
		}
	
	/*
	web[0].sprite_web=s_dual_spider_web_red
	web[1].sprite_web=s_dual_spider_web_red
	web[2].sprite_web=s_dual_spider_web_red
	web[3].sprite_web=s_dual_spider_web_red
	web[4].sprite_web=s_dual_spider_web_red
	
	*/
	
	
	web[0].sprite_web=s_spider_web_electric
	web[1].sprite_web=s_spider_web_electric
	web[2].sprite_web=s_spider_web_electric
	web[3].sprite_web=s_spider_web_electric
	web[4].sprite_web=s_spider_web_electric
	
	if(timer_web_return>0)
		{
		timer_web_return=timer_web_return-1
		}
	else
		{
		web[0].onscreen=false
		web[1].onscreen=false
		web[2].onscreen=false
		web[3].onscreen=false
		web[4].onscreen=false
		dual_spider_action=dual_spider_actions.return_web
		web[0].sprite_web=s_spider_web
		web[1].sprite_web=s_spider_web
		web[2].sprite_web=s_spider_web
		web[3].sprite_web=s_spider_web
		web[4].sprite_web=s_spider_web
		if(phase==1)
			{
			timer_web_return=50
			}
		if(phase==2)
			{
			timer_web_return=25
			}
		}
	}
	
if(dual_spider_action==dual_spider_actions.return_web)
	{
	if(phase==1)
		{
		with(web[0])
			{
			hsp=lengthdir_x(bullet_speed, point_direction(x, y, other.x, other.y))
			vsp=lengthdir_y(bullet_speed, point_direction(x, y, other.x, other.y))
			}
		with(web[1])
			{
			hsp=lengthdir_x(bullet_speed, point_direction(x, y, other.x, other.y))
			vsp=lengthdir_y(bullet_speed, point_direction(x, y, other.x, other.y))
			}
		with(web[2])
			{
			hsp=lengthdir_x(bullet_speed, point_direction(x, y, other.x, other.y))
			vsp=lengthdir_y(bullet_speed, point_direction(x, y, other.x, other.y))
			}
		
		if(place_meeting(x, y, web[0]))
			{
			web[0].onscreen=false
			web[0].connected=false
			web[0].x=x
			web[0].y=y
			}
		if(place_meeting(x, y, web[1]))
			{
			web[1].onscreen=false
			web[1].connected=false
			web[1].x=x
			web[1].y=y
			}
		
		if(place_meeting(x, y, web[2]))
			{
			web[2].onscreen=false
			web[2].connected=false
			web[2].x=x
			web[2].y=y
			}
	
		if(place_meeting(x, y, web[0])
		&& place_meeting(x, y, web[1])
		&& place_meeting(x, y, web[2]))
			{
			image_speed=0.2*sign(movespeed)*-image_xscale
			grenade_timer=30
			timer_web_shot=360
			dual_spider_action=dual_spider_actions.move
			}
		}
	if(phase==2)
		{
		with(web[0])
			{
			hsp=lengthdir_x(bullet_speed+5, point_direction(x, y, other.x, other.y))
			vsp=lengthdir_y(bullet_speed+5, point_direction(x, y, other.x, other.y))
			}
		with(web[1])
			{
			hsp=lengthdir_x(bullet_speed+5, point_direction(x, y, other.x, other.y))
			vsp=lengthdir_y(bullet_speed+5, point_direction(x, y, other.x, other.y))
			}
		with(web[2])
			{
			hsp=lengthdir_x(bullet_speed+5, point_direction(x, y, other.x, other.y))
			vsp=lengthdir_y(bullet_speed+5, point_direction(x, y, other.x, other.y))
			}
		with(web[3])
			{
			hsp=lengthdir_x(bullet_speed+5, point_direction(x, y, other.x, other.y))
			vsp=lengthdir_y(bullet_speed+5, point_direction(x, y, other.x, other.y))
			}
		with(web[4])
			{
			hsp=lengthdir_x(bullet_speed+5, point_direction(x, y, other.x, other.y))
			vsp=lengthdir_y(bullet_speed+5, point_direction(x, y, other.x, other.y))
			}
		
		if(place_meeting(x, y, web[0]))
			{
			web[0].onscreen=false
			web[0].connected=false
			web[0].x=x
			web[0].y=y
			}
		if(place_meeting(x, y, web[1]))
			{
			web[1].onscreen=false
			web[1].connected=false
			web[1].x=x
			web[1].y=y
			}
		
		if(place_meeting(x, y, web[2]))
			{
			web[2].onscreen=false
			web[2].connected=false
			web[2].x=x
			web[2].y=y
			}
			
		if(place_meeting(x, y, web[3]))
			{
			web[3].onscreen=false
			web[3].connected=false
			web[3].x=x
			web[3].y=y
			}
		
		if(place_meeting(x, y, web[4]))
			{
			web[4].onscreen=false
			web[4].connected=false
			web[4].x=x
			web[4].y=y
			}
	
		if(place_meeting(x, y, web[0])
		&& place_meeting(x, y, web[1])
		&& place_meeting(x, y, web[2])
		&& place_meeting(x, y, web[3])
		&& place_meeting(x, y, web[4]))
			{
			image_speed=0.25*sign(movespeed)*-image_xscale
			grenade_timer=30
			timer_web_shot=180
			dual_spider_action=dual_spider_actions.move
			}
		}
	}

if(place_meeting(x, y+floor(vsp), o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	//vsp=0
	movespeed=movespeed*-1
	vsp=movespeed
	image_speed=image_speed*-1
	}
	
	
y=y+vsp


switch(grenade_hsp)
	{
	case 3: 
		{
		grenade_hsp=2 
		break
		}
	case 2: 
		{
		grenade_hsp=4 
		break
		}
	case 4: 
		{
		grenade_hsp=5 
		break
		}
	case 5: 
		{
		grenade_hsp=3 
		break
		}
	}
	
switch(grenade_vsp)
	{
	case -6: 
		{
		grenade_vsp=-3 
		break
		}
	case -5: 
		{
		grenade_vsp=-4 
		break
		}
	case -4: 
		{
		grenade_vsp=-6 
		break
		}
	}

if(instance_exists(head))
	{
	head.image_index=image_index
	head.image_xscale=image_xscale
	head.x=x
	head.y=y
	}
else
	{
	if(instance_number(id.object_index)==1)
		{
		scr_boss_death(sprite_index, 3, my_next_room)
		}
	else
		{
		scr_boss_death(sprite_index, 3, noone)
		}
	}