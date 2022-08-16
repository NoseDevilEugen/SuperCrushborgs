/// @description Insert description here
// You can write your code in this editor

counter=(counter+1) mod 360


target.x=x
target.y=y
	
	
y=(y_start + (dsin_array[counter])*(100*sign(off)))
	
hp=scr_boss_get_damage(hp)
	
if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}
	
if(hp<=0)
	{
	scr_boss_death(sprite_index, 1, my_next_room)
	}

if(timer_shoot>0)
	{
	timer_shoot=timer_shoot-1
	}
if(timer_shoot<=0)
	{
	timer_shoot=120
	exp_dir=exp_dir*-1
	with(instance_create(bbox_left, y, o_wall_heli_exp))
		{
		exp_dir=other.exp_dir
		hsp=-4
		}
	}
	
	
