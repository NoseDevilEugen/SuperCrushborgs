/// @description Insert description here
// You can write your code in this editor

counter=(counter+1) mod 360

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


y=ystart+(dsin_array[floor(counter)]*20)

if((instance_number(o_w_boss_hand)==0
|| hp<250)
&& phase==1)
	{
	hsp=2
	timer_shot1=400
	timer_shot2=100
	phase=2
	}

if(instance_number(o_w_boss_hand)<=0 && abs(hsp)==1)
	{
	hsp=hsp*2
	}

if(timer_shot1>0)
	{
	timer_shot1=timer_shot1-1
	}
if(timer_shot1==200)
	{
	player_direction=point_direction(x, y, player.x+(player.hsp*2), player.y+(player.vsp*2))
	with(instance_create(x-15, y, o_spider_bullet))
		{
		hsp=lengthdir_x(bullet_speed, other.player_direction)
		vsp=lengthdir_y(bullet_speed, other.player_direction)
		}
	//timer_shot1=120
	}
if(timer_shot1==0)
	{
	player_direction=point_direction(x, y, player.x+(player.hsp*2), player.y+(player.vsp*2))
	with(instance_create(x+15, y, o_spider_bullet))
		{
		hsp=lengthdir_x(bullet_speed, other.player_direction)
		vsp=lengthdir_y(bullet_speed, other.player_direction)
		}
	timer_shot1=400
	}
	
if(phase==2)
	{

	if(timer_shot2<30 || timer_shot2>110)
		{
		sprite_index=s_waterfall_boss_head_attack
		}
	else
		{
		sprite_index=s_waterfall_boss_head_move_left
		}
		
	if(timer_shot2>0)
		{
		timer_shot2=timer_shot2-1
		}
	else
		{
		player_direction=point_direction(x, y, player.x+(player.hsp*2), player.y+(player.vsp*2))
		with(instance_create(x, y+24, o_w_boss_big_bullet))
			{
			hsp=lengthdir_x(bullet_speed, other.player_direction)
			vsp=lengthdir_y(bullet_speed, other.player_direction)
			}
		timer_shot2=120

		}
	
	if(place_meeting(x+hsp, y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		hsp=hsp*-1
		}
	x=x+hsp
	}
	
hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	//scr_add_score(o_controller.player1, 3000)
	//scr_add_score(o_controller.player2, 3000)
	instance_destroy(o_w_boss_hand)
	scr_boss_death(s_waterfall_boss_head_attack, 5, my_next_room)
	}
	
if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}

if(sign(x-player.x)!=0 && sprite_index!=s_waterfall_boss_head_center && sprite_index!=s_waterfall_boss_head_attack)
	{
	if(sign(x-player.x)<0)
		{
		sprite_index=s_waterfall_boss_head_move_right
		}
	else
		{
		sprite_index=s_waterfall_boss_head_move_left
		}
	}