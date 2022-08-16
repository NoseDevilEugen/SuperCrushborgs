/// @description Insert description here
// You can write your code in this editor

counter=(counter+1) mod 360

	
if(horizontal==false)
	{
	hsp=0
	vsp=(ystart + dsin_array[floor(counter)]*amp)-yprevious
	}
	
else
	{
	vsp=0
	hsp=(xstart + dsin_array[floor(counter)]*amp)-xprevious
	}
	
x=round(x+hsp)
y=round(y+vsp)

if(sprite_index==s_flying_spawner_closed)
	{
	if(timer_attack>0)
		{
		timer_attack=timer_attack-1
		}
	else
		{
		timer_attack=90
		sprite_index=s_flying_spawner_open
		}
	}
	
if(sprite_index==s_flying_spawner_open)
	{
	if(image_index>=image_number-image_speed)
		{
		sprite_index=s_flying_spawner_closed
		exp_dir=exp_dir*-1
		with(instance_create(x+hsp, y+vsp, o_wall_heli_exp))
			{
			timer_exp=0
			exp_dir=other.exp_dir
			hsp=0
			vsp=0
			}
		}
	}


hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	scr_boss_death(sprite_index, 1, my_next_room)
	}
	
if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}