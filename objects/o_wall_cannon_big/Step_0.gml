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

player_dir=point_direction(x, y, player.x, player.y)



if(sprite_index==s_straight_cannon_idle)
	{
	if(timer_shoot>0)
		{
		timer_shoot=timer_shoot-1
		}
	if(timer_shoot<=0)
		{
		sprite_index=s_straight_cannon
		image_index=1
		timer_shoot=90
		bullet_x=x+(18*image_xscale)
		bullet_y=y+6
		
		with(instance_create(bullet_x, bullet_y, o_special_fx))
			{
			sprite_index=s_machinegun_bullet_destroyed
			}
			
		with(instance_create(bullet_x, bullet_y, o_joe_spreadgun_bullet))
			{
			hsp=lengthdir_x(bullet_speed, other.player_dir)
			vsp=lengthdir_y(bullet_speed, other.player_dir)
			}
		}
	}



if(sprite_index==s_straight_cannon && image_index>=image_number-image_speed)
	{
	sprite_index=s_straight_cannon_idle
	}

hp=scr_boss_get_damage(hp)


if(hp<=0)
	{
	scr_boss_death(sprite_index, 1, my_next_room)
	}
	
if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}
	
