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



if(player_dir>338 || player_dir<22)
	{
	image_index=0
	}	
if(player_dir>23 && player_dir<67)
	{
	image_index=1
	}
if(player_dir>68 && player_dir<112)
	{
	image_index=2
	}
if(player_dir>113 && player_dir<157)
	{
	image_index=3
	}
if(player_dir>158 && player_dir<202)
	{
	image_index=4
	}
if(player_dir>203 && player_dir<247)
	{
	image_index=5
	}
if(player_dir>248 && player_dir<292)
	{
	image_index=6
	}
if(player_dir>293 && player_dir<337)
	{
	image_index=7
	}

if(timer_shoot>0)
	{
	timer_shoot=timer_shoot-1
	}
if(timer_shoot<=0)
	{
	timer_shoot=90*instance_number(object_index)

	switch(image_index)
		{
		case 0:
			{
			bullet_x=bbox_right
			bullet_y=y
			break
			}
		case 1:
			{
			bullet_x=bbox_right-5
			bullet_y=bbox_top
			break
			}
		case 2:
			{
			bullet_x=x
			bullet_y=bbox_top

			break
			}
		case 3:
			{
			bullet_x=bbox_left+5
			bullet_y=bbox_top
			break
			}
		case 4:
			{
			bullet_x=bbox_left
			bullet_y=y
			break
			}
		case 5:
			{
			bullet_x=bbox_left+5
			bullet_y=bbox_bottom

			break
			}
		case 6:
			{
			bullet_x=x
			bullet_y=bbox_bottom
			break
			}
		case 7:
			{
			bullet_x=bbox_right-5
			bullet_y=bbox_bottom
			break
			}
		default: break
		}
		
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
	
