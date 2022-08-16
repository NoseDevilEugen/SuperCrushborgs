/// @description Insert description here
// You can write your code in this editor

if(player_change_timer>0)
	{
	player_change_timer=player_change_timer-1
	}
else
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

target.x=x
target.y=y

//web.x=web.x-vsp

if(state==cannon_states.moving)
	{
	web.sprite_web=noone
	web.connected=false
	
	if(player.y<y-30)
		{
		web.x=x+(16*image_xscale)
		web.y=y-10
		web.start_x=x+(16*image_xscale)
		web.start_y=y-10
		sprite_index=s_mainframe_cannon_up
		}
	else if(player.y>y+30)
		{
		web.x=x+(16*image_xscale)
		web.y=y+10
		web.start_x=x+(16*image_xscale)
		web.start_y=y+10
		sprite_index=s_mainframe_cannon_down
		}
	else
		{
		web.x=x+(20*image_xscale)
		web.y=y
		web.start_x=x+(20*image_xscale)
		web.start_y=y
		sprite_index=s_mainframe_cannon
		}
	vsp=moving_direction*movespeed
	if(timer_attack>0)
		{
		timer_attack=timer_attack-1
		}
	else
		{
		timer_attack=160
		switch(sprite_index)
			{
			case s_mainframe_cannon_up: 
				{
				if(image_xscale>0)
					{
					with(web)
						{
						if(connected==false)
							{
							hsp=lengthdir_x(bullet_speed, 30)
							vsp=lengthdir_y(bullet_speed, 30)
							}
						}
					}
				else
					{
					with(web)
						{
						if(connected==false)
							{
							hsp=lengthdir_x(bullet_speed, 150)
							vsp=lengthdir_y(bullet_speed, 150)
							}
						}
					}
				break
				}
			case s_mainframe_cannon_down: 
				{
				if(image_xscale>0)
					{
					with(web)
						{
						if(connected==false)
							{
							hsp=lengthdir_x(bullet_speed, 330)
							vsp=lengthdir_y(bullet_speed, 330)
							}
						}
					}
				else
					{
					with(web)
						{
						if(connected==false)
							{
							hsp=lengthdir_x(bullet_speed, 210)
							vsp=lengthdir_y(bullet_speed, 210)
							}
						}
					}
				break
				}
			case s_mainframe_cannon: 
				{
				if(image_xscale>0)
					{
					with(web)
						{
						if(connected==false)
							{
							hsp=lengthdir_x(bullet_speed, 0)
							vsp=lengthdir_y(bullet_speed, 0)
							}
						}
					}
				else
					{
					with(web)
						{
						if(connected==false)
							{
							hsp=lengthdir_x(bullet_speed, 180)
							vsp=lengthdir_y(bullet_speed, 180)
							}
						}
					}
				break
				}
			}
			
			
		timer_charging=90
		charge_index=0
		state=cannon_states.charging
		//vsp=0
		/*
		if(movespeed<3)
			{
			movespeed=movespeed+1
			}
		else
			{
			movespeed=1
			}
		*/
		}
	
	}

charge_index=charge_index+0.3

if(charge_index>=29)
	{
	charge_index=0
	}

if(sprite_index==s_mainframe_cannon_up)
	{
	web.start_x=x+(16*image_xscale)
	web.start_y=y-10
	}
else if(sprite_index==s_mainframe_cannon_down)
	{

	web.start_x=x+(16*image_xscale)
	web.start_y=y+10
	}
else
	{
	web.start_x=x+(20*image_xscale)
	web.start_y=y
	}


if(state==cannon_states.charging)
	{
	if(sprite_index!=s_mainframe_cannon)
		{
		if(sprite_index==s_mainframe_cannon_down)
			{
			web.x=web.x-(angle_fix*sign(vsp)*image_xscale)
			}
		else if(sprite_index==s_mainframe_cannon_up)
			{
			web.x=web.x+(angle_fix*sign(vsp)*image_xscale)
			}
		}
	else
		{
		web.y=y
		}
	web.sprite_web=noone
	if(timer_charging>0)
		{
		timer_charging=timer_charging-1
		}
	else
		{
		timer_laser=60
		state=cannon_states.attack
		
		web.sprite_web=s_laser_wide
		timer_charging=90
		}
	}
	
if(state==cannon_states.attack)
	{
	if(sprite_index!=s_mainframe_cannon)
		{
		if(sprite_index==s_mainframe_cannon_down)
			{
			web.x=web.x-(angle_fix*sign(vsp)*image_xscale)
			}
		else if(sprite_index==s_mainframe_cannon_up)
			{
			web.x=web.x+(angle_fix*sign(vsp)*image_xscale)
			}
		}
	else
		{
		web.y=y
		}
		
	/*
	if(collision_line(x, y, web.x, web.y, o_player_skelet, false, false)
	&& collision_line(x, y, web.x, web.y, o_player_skelet, false, false).my_player.invul_time<=0
	&& collision_line(x, y, web.x, web.y, o_player_skelet, false, false).my_player.state!=states.dead
	&& collision_line(x, y, web.x, web.y, o_player_skelet, false, false).my_player.primary_action!=primary_actions.knockback
	&& collision_line(x, y, web.x, web.y, o_player_skelet, false, false).my_player.primary_action!=primary_actions.destroyed
	&& collision_line(x, y, web.x, web.y, o_player_skelet, false, false).my_player.primary_action!=primary_actions.teleport)
		{
		with(collision_line(x, y, web.x, web.y, o_player_skelet, false, false).my_player)
			{
			scr_take_damage()
			}
		}	
	*/
	if(timer_laser>0)
		{
		timer_laser=timer_laser-1
		}
	else
		{
		web.connected=false
		web.x=x
		web.y=y
		web.sprite_web=noone
		timer_attack=90
		state=cannon_states.moving
		timer_laser=60
		}
	}
	
if(y+(vsp*2)<__view_get((e__VW.YView), view_current)+64
|| y+(vsp*2)>__view_get((e__VW.YView), view_current)+__view_get((e__VW.HView), view_current)-64)
	{
	moving_direction=moving_direction*-1
	vsp=movespeed*moving_direction
	}
y=y+floor(vsp)		

hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	scr_boss_death(sprite_index, 1, noone)
	}
	
target.x=x
target.y=y