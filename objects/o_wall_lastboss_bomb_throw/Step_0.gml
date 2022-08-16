/// @description Insert description here
// You can write your code in this editor

if(instance_number(o_wall_lastboss_eye)<1)
	{
	reset_timer=60
	}

if(timer>0)
	{
	timer=timer-1
	}
else
	{
	timer=reset_timer
	add_sub=add_sub*-1
	with(instance_create_layer(x, y,"depth_player", o_wall_lastboss_bomb))
		{
		sub=other.add_sub
		vsp=-10-other.bomb_add_vsp
		hsp=-3-other.bomb_add_hsp
		}
	bomb_add_hsp=bomb_add_hsp+1*sub
	if(bomb_add_hsp>=5 || bomb_add_hsp==0)
		{
		sub=sub*-1
		}
	}
	
