/// @description Insert description here
// You can write your code in this editor

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}

hp=scr_boss_get_damage(hp)
	
if(hp<=0)
	{
	scr_boss_death(sprite_index, 1, my_next_room)
	}