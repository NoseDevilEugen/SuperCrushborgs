/// @description Insert description here
// You can write your code in this editor

if(AI_active==false)
	{
	if(collision_circle(x, y, 200, o_player, false, false)!=noone
	|| collision_circle(x, y, 200, o_player_alt, false, false)!=noone)
		{
		visible=true
		AI_active=true
		}
	}

if(AI_active==true)
	{

	if(action=flower_actions.rise)
		{
		hsp=0
		vsp=(-4*image_yscale)
		var i=0
		for(i=0; i<legs; i++)
			{
			if(instance_exists(leg[i]))
				{
				leg[i].vsp=vsp
				}
			}
		if(leg[legs-1].object_index==o_flower_leg)
			{
			vsp=0
			var i=0
			for(i=0; i<legs; i++)
				{
				if(instance_exists(leg[i]))
					{
					leg[i].vsp=0
					leg[i].x_start=xstart
					leg[i].y_start=ystart
					}
				}
			
		
		
			distance=abs(y-ystart)
			action=flower_actions.bloom
			image_index=0
			}	
		}
	
	
	if(action==flower_actions.bloom)
		{
		if(image_index>=image_number-image_speed)
			{
			counter=point_direction(x, y, xstart, ystart)
			angle_accelerration = (-image_yscale*(.05*velocity_dampening)) * dcos(counter)
			angle_velocity = (starting_velocity)+angle_accelerration
			var i=0
			for(i=0; i<legs; i++)
				{
				if(instance_exists(leg[i]))
					{
					leg[i].counter=point_direction(leg[i].x, leg[i].y, xstart, ystart)
					leg[i].angle_accelerration = (-image_yscale*(.05*leg[i].velocity_dampening)) * dcos(leg[i].counter)
					leg[i].angle_velocity = (starting_velocity)+leg[i].angle_accelerration
					}
				}
			action=flower_actions.idle
			}
		}
	
	
	if(action==flower_actions.idle)
		{
		
		if(instance_position(anchor_x, anchor_y, o_floor))
			{
			anchor_x=anchor_x+instance_position(anchor_x, anchor_y, o_floor).hsp
			anchor_y=anchor_y+instance_position(anchor_x, anchor_y, o_floor).vsp
			}


   
	
		angle_accelerration = (-image_yscale*(.05*velocity_dampening)) * dcos(counter)
	    angle_velocity += angle_accelerration
	
		counter=(((counter)+angle_velocity) mod 360)
	
		//counter=(counter+1) mod 360
	
	
	
		//val1=dsin_array[floor(counter)]*(legs*10)
		//val1=clamp(val1, -40, 40)
		val1=dcos_array[floor(counter)]*(legs*12)
		val2=dsin_array[floor(counter)]*(legs*12)
		//val2=clamp(val2, -60, -30)

		hsp=(xstart + (val1-xprevious))	//простое движение влево-вправо от xstart
		vsp=(ystart + (val2-yprevious)) 
		var dir = point_direction(x, y, xstart, ystart)
		//var xx = lengthdir_x(8, dir), yy = lengthdir_y(8, dir)
	
		/*
		var i=0
		for(i=0; i<legs; i++)
			{
			leg[i].hsp=0
			leg[i].vsp=0
			leg[i].image_angle=dir+90
			if(i<legs-1)
				{
				leg[i].x= round(x + xx * (i+1)) 
				leg[i].y= round(y + yy * (i+1))
				}
		
			leg[i].hsp=(xstart + dsin_array[floor(counter)]*((legs-(i+1))*10))-leg[i].xprevious	//простое движение влево-вправо от xstart
			leg[i].vsp=(ystart + (power(dcos_array[floor(counter)], 2)*-image_yscale)*((legs-(i+1))*10))-leg[i].yprevious 
		
			}
		*/
		}
	
	
	
	x=x+round(hsp)
	x=round(x)

	y=y+floor(vsp)
	
	hp=scr_boss_get_damage(hp)


	if(hp<=0)
		{
		if(instance_exists(target))
			{
			instance_destroy(target)
			}
	
		
		instance_destroy(id)
		}

	
	}
	
sprite_index=s_array[action]