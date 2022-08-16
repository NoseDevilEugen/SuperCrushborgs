/// @description Insert description here
// You can write your code in this editor


//sprite_index=s_machinegun_bullet_idle


if(place_meeting(x+hsp, y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	instance_destroy(id)
	}	

x=x+hsp

if(place_meeting(x, y+vsp, o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	//o_player.bullet_recharge=20
	instance_destroy(id)
	}	
y=y+vsp

scr_destroy_projectile()