/// @description Insert description here
// You can write your code in this editor

if(x>o_camera.screen_left-16-distance
&& x<o_camera.screen_right+16+distance
&& y>o_camera.screen_top-16-distance 
&& y<o_camera.screen_bottom+16+distance)
    {
	AI_active=true
	}

	if(AI_active==true)
		{
	if(instance_position(anchor_x, anchor_y, o_floor))
		{
		anchor_x=anchor_x+instance_position(anchor_x, anchor_y, o_floor).hsp
		anchor_y=anchor_y+instance_position(anchor_x, anchor_y, o_floor).vsp
		}

	angle_accelerration = -(.05*velocity_dampening) * dcos(angle)
     
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

	
	hp=scr_boss_get_damage(hp)
	}

if(hp<=0)
	{
	if(instance_exists(chain))
		{
		instance_destroy(chain)
		}
	scr_boss_death(sprite_index, 1, noone)
	
	}

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}
if(instance_exists(chain))
	{
	chain.x=x
	chain.y=y
	}
	