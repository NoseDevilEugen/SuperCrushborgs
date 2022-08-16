/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x+hsp, y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	//vsp=-1
	hsp=-hsp
	}
	
x=x+hsp

if(place_meeting(x, y+vsp, o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	instance_destroy()
	}
	
y=y+vsp

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}

hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	instance_destroy()
	}

scr_destroy_projectile()