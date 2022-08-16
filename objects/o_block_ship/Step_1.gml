/// @description Insert description here
// You can write your code in this editor
floor_ver_step_new()

if(instance_exists(r_side))
	{
	r_side.y=r_side.y+vsp
	r_side.y=round(r_side.y)
	}

if(instance_exists(l_side))
	{
	l_side.y=l_side.y+vsp
	l_side.y=round(l_side.y)
	}

if(instance_exists(b_side))
	{
	b_side.y=b_side.y+vsp
	b_side.y=round(b_side.y)
	}
	
if(instance_exists(t_side))
	{
	t_side.y=t_side.y+vsp
	t_side.y=round(t_side.y)
	}
	
if(instance_exists(r_hazard))
	{
	r_hazard.y=r_hazard.y+vsp
	r_hazard.y=round(r_hazard.y)
	}

if(instance_exists(l_hazard))
	{
	l_hazard.y=l_hazard.y+vsp
	l_hazard.y=round(l_hazard.y)
	}

if(instance_exists(b_hazard))
	{
	b_hazard.y=b_hazard.y+vsp
	b_hazard.y=round(b_hazard.y)
	}
	
if(instance_exists(t_hazard))
	{
	t_hazard.y=t_hazard.y+vsp
	t_hazard.y=round(t_hazard.y)
	}	
	

/*
if(place_meeting(x, y, o_laser_hazard_big))
	{
	hp=hp-1
	if(hp<=0)
		{
		instance_destroy(id)
		with(instance_create((bbox_left+bbox_right)/2, (bbox_top+bbox_bottom)/2, o_special_fx))
			{
			image_index=0
			image_speed=0.2
			sprite_index=s_ship_explosion
			}
		}
	}
*/