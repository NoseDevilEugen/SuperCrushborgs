/// @description Insert description here
// You can write your code in this editor

scr_add_score_to_one()

if(timer_bomb<60)
	{
	with(instance_create(x, y+10, o_joe_boss_grenade))
		{
		sprite_index=s_fly_egg
		hsp=0
		vsp=0
		}
	}