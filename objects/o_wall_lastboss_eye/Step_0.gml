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


if(image_index>=image_number-image_speed)
	{
	if(sprite_index==s_boss_wall_forpost_eye_to_barrel)
		{
		sprite_index=s_boss_wall_forpost_eye_barrel
		}
	if(sprite_index==s_boss_wall_forpost_barrel_to_eye)
		{
		sprite_index=s_boss_wall_forpost_eye_laser
		}
	}

if(hp<50)
	{
	reset_timer=90
	}

if(timer>0)
	{
	timer=timer-1
	}
else
	{
	timer=reset_timer
	if(laser==true)
		{
		laser=!laser
		with(instance_create_layer(x-12, y, "Bullets", o_joe_start_laser))
			{
			bullet_dir=point_direction(other.x, other.y, other.player.x, other.player.y)
			}
		sprite_index=s_boss_wall_forpost_eye_to_barrel
		image_index=0
		}
	else
		{
		laser=!laser
		with(instance_create_layer(x, y, "Bullets", o_barrel))
			{
			image_xscale=-1
			hsp=-3
			vsp=-3
			thrown=true
			}
		sprite_index=s_boss_wall_forpost_barrel_to_eye
		image_index=0
		}
	}
	
y = (ystart + dsin(counter)*20)

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}
	
hp=scr_boss_get_damage(hp)

if(hp<0)
	{
	scr_boss_death(sprite_index, 1, my_next_room)
	}
	
