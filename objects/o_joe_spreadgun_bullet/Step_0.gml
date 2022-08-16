/// @description Insert description here
// You can write your code in this editor


//sprite_index=s_machinegun_bullet_idle


	
x=x+hsp

y=y+vsp

if(place_meeting(x, y, o_floor))
	{
	instance_destroy(id)
	}

scr_destroy_projectile()