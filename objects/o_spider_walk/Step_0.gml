//if enemy is onscreen

scr_change_focus()


if(x>o_camera.screen_left-16
&& x<o_camera.screen_right+16
&& y>o_camera.screen_top-16 
&& y<o_camera.screen_bottom+16)
    {
    enemy_onscreen=true
	AI_active=true
    }


if(AI_active==true)
	{	
	if(sprite_index==s_spider_walk_ver)
		{
		hsp=movespeed*image_xscale
		vsp=0
		
		if(!place_meeting(x, y+image_yscale, o_floor))
			{
			sprite_index=s_spider_walk_hor
			y=y+(image_yscale*16)
			hsp=0
			while(place_meeting(x, y, o_floor))
				{
				x=x+image_xscale
				}
			}
		if(place_meeting(x+sign(hsp), y, o_floor))
			{
			sprite_index=s_spider_walk_hor
			image_yscale=image_yscale*-1
			image_xscale=image_xscale*-1
			while(place_meeting(x, y, o_floor))
				{
				x=x+image_xscale
				}
			}	
		}			
	
	if(sprite_index==s_spider_walk_hor)
		{
		hsp=0
		vsp=movespeed*image_yscale
		
		if(!place_meeting(x-image_xscale, y, o_floor))
			{
			sprite_index=s_spider_walk_ver
			image_yscale=image_yscale*-1
			image_xscale=image_xscale*-1
			x=x+(image_xscale*16)
			vsp=0
			while(place_meeting(x, y, o_floor))
				{
				y=y-image_yscale
				}
			}
		if(place_meeting(x, y+sign(vsp), o_floor))
			{
			sprite_index=s_spider_walk_ver
			while(place_meeting(x, y, o_floor))
				{
				y=y-image_yscale
				}
			}
		}
	}
	
//renew gravity for enemy instance when enemy touches the ground    



//horizontal collision

//slopes

if(AI_active==true)
	{
	scr_init_conv_belt()
	//scr_init_slopes(state, states.grounded)

	//scr_init_slopes_ceiling_soldier(state, states.grounded)

	
    
	scr_init_horizontal_collisions()              
	x=hsp_final+x
	x=round(x)  


	col_v=true
	scr_init_oneway_collisions()  
	scr_init_vertical_collisions()      
    
	    

	//scr_init_oneway_collisions_end()
	/*
	if(place_meeting(x, y, o_floor))
	    {
	    y=y-1
	    }
	*/
	y+=vsp
	y=round(y)
	}

    



if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}

if(y>=o_camera.camera_border_bottom+32)
    {
    instance_destroy(id)
    }

hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	scr_boss_death(sprite_index, 2, noone)
	}
