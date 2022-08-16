/// @description Insert description here
// You can write your code in this editor

if(timer>30)
	{
	timer=timer-1
	
	//orbit=orbit-1
	
	angle=point_direction(x, y, player.x, player.y)
	
	hsp=lengthdir_x(1, angle)
	vsp=lengthdir_y(1, angle)
	x=x+hsp
	y=y+vsp
	
	}
else if(timer>0)
	{
	timer=timer-1
	
	angle=point_direction(x, y, player.x, player.y)
	
	hsp=0
	vsp=0
	
	x=x+hsp
	y=y+vsp
	}
else 
	{
		
	if(point_distance(x, y, player.x, player.y)>100)
		{
		angle=point_direction(x, y, player.x, player.y)
		}
	
	hsp=lengthdir_x(3, angle)
	vsp=lengthdir_y(3, angle)
	x=x+hsp
	y=y+vsp
	}


if(place_meeting(x, y, o_player_skelet))
	{
	with(instance_create(x, y, o_explosion))
		{
		sprite_index=s_sfx_explosion
		}
	instance_destroy()
	}

scr_soldier_get_damage(s_sfx_explosion, s_sfx_explosion)

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}