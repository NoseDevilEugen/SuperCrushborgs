/// @description Insert description here
// You can write your code in this editor
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

/*
if((instance_number(o_w_boss_hand)==0
|| hp<150)
&& phase==1)
	{
	hsp=2
	phase=2
	}


if(instance_number(o_w_boss_hand)<=0 && abs(hsp)==1)
	{
	hsp=hsp*2
	}
*/

if(timer_shot1>0)
	{
	timer_shot1=timer_shot1-1
	}
else
	{
	timer_shot1=180

	with(instance_create(x, y, o_falling_spawner))
		{
		hsp=-sign(other.hsp)
		vsp=-3
		to_spawn=other.creatures_arr[irandom_range(0, 9)]
		image_xscale=-1
		}
		
	}

/*	
if(phase==2)
	{

	if(timer_shot2<20)
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
*/

if(instance_number(o_mainframe_eye)<=0 && phase==1)
	{
	phase=2
	
	cannon_l=instance_create(54, 96, o_cannon_spawner)
	cannon_r=instance_create(420, 160, o_cannon_spawner)
	cannon_c=instance_create(240, 54, o_cannon_spawner)
	
	with(cannon_r)
		{
		image_speed=0.2
		sprite_index=s_mainframe_cannon_forming
		image_index=0
		timer_attack=360
		image_xscale=-1
		to_spawn=o_mainframe_cannon
		}
		
	with(cannon_l)
		{
		image_speed=0.2
		to_spawn=o_mainframe_cannon
		sprite_index=s_mainframe_cannon_forming
		image_index=0
		image_xscale=1
		}
	
	
	with(cannon_c)
		{
		image_speed=0.2
		sprite_index=s_mainframe_cannon_ceiling_forming
		image_index=0
		to_spawn=o_mainframe_cannon_ceiling
		timer_attack=240
		}

	/*
	cannon_l=instance_create(xstart-220, ystart-32, o_mainframe_cannon)
	cannon_r=instance_create(xstart+180, ystart+32, o_mainframe_cannon)

	with(cannon_r)
		{
		timer_attack=360
		image_xscale=-1
		}
	
	cannon_c=instance_create(xstart, ystart-100, o_mainframe_cannon_ceiling)
	with(cannon_c)
		{
		timer_attack=240
		}
	*/
	
	}

if(phase==1)
	{
	counter_hsp=(counter_hsp+0.5) mod 360
	counter_vsp=(counter_vsp+1) mod 360
	}
else
	{
	counter_hsp=(counter_hsp+1) mod 360
	counter_vsp=(counter_vsp+2) mod 360
	}



val1=dsin_array[floor(counter_hsp)]*(150)
val2=dsin_array[floor(counter_vsp)]*(40)
//val2=clamp(val2, -60, -30)

hsp=(xstart + (val1-xprevious))	//простое движение влево-вправо от xstart
vsp=(ystart + (val2-yprevious)) 

x=(x+(hsp))

y=(y+(vsp))


hp=scr_boss_get_damage(hp)

/*
if(hp<=0)
	{
	scr_add_score(o_controller.player1, 3000)
	scr_add_score(o_controller.player2, 3000)
	//instance_destroy(o_w_boss_hand)
	scr_boss_death(sprite_index, 5, my_next_room)
	}
*/

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}

