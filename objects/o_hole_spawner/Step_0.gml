/// @description Insert description here
// You can write your code in this editor

scr_change_focus()

if(instance_place(x, y, o_floor))
	{
	x=x+instance_place(x, y, o_floor).hsp
	y=y+instance_place(x, y, o_floor).vsp
	}



if(sprite_index=s_hole_spawner_open
&& image_index>=image_number-image_speed)
	{
	sprite_index=s_hole_spawner_closed
	if(point_distance(x, y, player.x, player.y)>75 && point_distance(x, y, player.x, player.y)<250)
		{
		
		dir=dir*-1
		with(instance_create(x, y, o_hole_spawner_bullet))
			{
			player=other.player
			dir=other.dir
			}
		}
	image_index=0
	}


if(sprite_index=s_hole_spawner_closed
&& image_index>=image_number-image_speed)
	{
	image_index=0
	sprite_index=s_hole_spawner_open
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