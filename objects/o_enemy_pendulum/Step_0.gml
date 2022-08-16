/// @description Insert description here
// You can write your code in this editor

scr_change_focus()

if(instance_position(anchor_x, anchor_y, o_floor))
	{
	anchor_x=anchor_x+instance_position(anchor_x, anchor_y, o_floor).hsp
	anchor_y=anchor_y+instance_position(anchor_x, anchor_y, o_floor).vsp
	}
	
if(instance_position(anchor_x, anchor_y, o_one_way_floor_moving_hor))
	{
	anchor_x=anchor_x+instance_position(anchor_x, anchor_y, o_one_way_floor_moving_hor).hsp
	//anchor_y=anchor_y+instance_position(anchor_x, anchor_y, o_one_way_floor_moving_hor).vsp
	}
	
	
	angle_accelerration = -(.02) * dcos(angle)
     
	angle_velocity += angle_accelerration
	angle += angle_velocity
     
	//angle_velocity *= velocity_dampening;

	var new_x = anchor_x + lengthdir_x(distance, angle)
	var new_y = anchor_y + lengthdir_y(distance, angle)

	hsp = new_x - x
	vsp = new_y - y
	
	//image_xscale=sign(hsp)
	

	x += hsp
	y += vsp

if(sprite_index=s_hole_spawner_open
&& image_index>=image_number-image_speed)
	{
	sprite_index=s_hole_spawner_closed
	if(grenade==false)
		{
		
		if(point_distance(x, y, player.x, player.y)>75 && point_distance(x, y, player.x, player.y)<250)
			{
			dir=dir*-1
			with(instance_create(x, y, o_hole_spawner_bullet))
				{
				player=other.player
				dir=other.dir
				}
			}
		}
	else
		{
		dir=dir*-1
		with(instance_create(x, y, o_grenade_small))
			{
			hsp=3*other.dir
			vsp=-5
			}
		with(instance_create(x, y, o_grenade_small))
			{
			hsp=-3*other.dir
			vsp=-5
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
	
