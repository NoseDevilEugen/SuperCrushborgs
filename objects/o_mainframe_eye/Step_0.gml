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
	
if(sprite_index=s_mainframe_eye_open
&& image_index>=image_number-image_speed)
	{
	sprite_index=s_mainframe_eye_closed

	dir=point_direction(x, y, player.x, player.y)
	
	with(instance_create(x, y, o_joe_spreadgun_bullet))
		{
		sprite_index=s_eye_fire_ring
		
		hsp=lengthdir_x(bullet_speed-1, other.dir)
		vsp=lengthdir_y(bullet_speed-1, other.dir)
		if(hsp!=0)
			{
			image_speed=sign(hsp)*0.2
			}
		else
			{
			image_speed=0.2
			}
		}
	
	image_index=0
	}


if(sprite_index=s_mainframe_eye_closed
&& counter==counter_shoot)
	{
	counter_shoot=(72*irandom_range(1, 7)) mod 360
	image_index=0
	sprite_index=s_mainframe_eye_open
	}






if(instance_exists(o_boss_mainframe))
	{
	counter=(counter+1) mod 360
	x_start=o_boss_mainframe.x
	y_start=o_boss_mainframe.y
	}

val1=dsin_array[floor(counter)]*(50)
val2=dcos_array[floor(counter)]*(50)
//val2=clamp(val2, -60, -30)

hsp=(x_start + (val1-xprevious))	//простое движение влево-вправо от xstart
vsp=(y_start + (val2-yprevious)) 	

	
x=(x+hsp)

y=(y+vsp)

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