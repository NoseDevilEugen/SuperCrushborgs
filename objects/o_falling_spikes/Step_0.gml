/// @description Insert description here
// You can write your code in this editor

if(timer_fall>0)
	{
	timer_fall=timer_fall-1
	}
else
	{
	hp=scr_boss_get_damage(hp)
	if(vsp<12)
		{
		vsp=vsp+grav
		}
	y=y+vsp
	}
	


if(hp<=0)
	{
	scr_boss_death(sprite_index, 1, noone)
	}

//уничтожение за пределами экрана
//scr_destroy_projectile()