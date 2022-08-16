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
	web.x=x
	web.start_x=x
	web.y=y+20
	
	
	hsp=moving_direction*movespeed
	if(timer_attack>0)
		{
		timer_attack=timer_attack-1
		}
	else
		{
		timer_attack=160
		with(web)
			{
			if(connected==false)
				{
				hsp=lengthdir_x(bullet_speed, 270)
				vsp=lengthdir_y(bullet_speed, 270)
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

web.x=x
web.start_x=x
web.start_y=y+20


if(state==cannon_states.charging)
	{
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
	web.x=x
	web.start_x=x	
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
		state=cannon_states.moving
		timer_attack=60
		timer_laser=60
		}
	}
	
if(x+(hsp*2)<__view_get((e__VW.XView), view_current)+64 
|| x+(hsp*2)>__view_get((e__VW.XView), view_current)+__view_get((e__VW.WView), view_current)-64)
	{
	moving_direction=moving_direction*-1
	hsp=movespeed*moving_direction
	}
x=x+floor(hsp)		

hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	scr_boss_death(sprite_index, 1, noone)
	}
	
target.x=x
target.y=y