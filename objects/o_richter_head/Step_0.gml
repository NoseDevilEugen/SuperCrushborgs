/// @description Insert description here
// You can write your code in this editor

if(vsp<8)
	{
	vsp=vsp+grav
	}

if(place_meeting(x+floor(hsp), y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	hsp=0
	}

	
x=x+floor(hsp)
x=floor(x)

if(place_meeting(x, y+floor(vsp), o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	vsp=0
	}



if(instance_place(x, y+1, o_floor))
	{
	if(instance_place(x, y+1, o_floor).destructible==true)
		{
		with(instance_place(x, y+1, o_floor))
			{
			instance_destroy()
			}
		}
		scr_boss_death(sprite_index, 1, noone)
	}
	
y=y+floor(vsp)
y=floor(y)

hp=scr_boss_get_damage(hp)