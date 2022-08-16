//if enemy is onscreen

scr_change_focus()


if(x>o_camera.screen_left-16
&& x<o_camera.screen_right+16
&& y>o_camera.screen_top-16 
&& y<o_camera.screen_bottom+16)
    {
    enemy_onscreen=true
	if(sign(player.x-x)!=0
	&& AI_active==false)
		{
		image_xscale=sign(player.x-x)
		}
	AI_active=true
	if(abs(player.x-x)>300
	&& (state==states.grounded))
		{
		if(sign(player.x-x)!=0)
			{
			image_xscale=sign(player.x-x)
			}
		}
	if(collision_rectangle(x, y, x+(10*image_xscale), bbox_top, o_floor, true, false)
	&& (vsp>0 || state==states.grounded)
	&& abs(player.x-x)<=300)
		{
		image_xscale=image_xscale*-1
		}
    }


if(x<o_camera.screen_left-32
|| x>o_camera.screen_right+32)
	{
	if(x<o_camera.screen_left-32)
		{
		image_xscale=1
		}
	if(x>o_camera.screen_right+32)
		{
		image_xscale=-1
		}
	}

if(AI_active==true)
	{
		
	if(on_fire==false)
		{
		if(place_meeting(x, y, o_firewall) 
		|| place_meeting(x, y, o_lava))
			{
			on_fire=true
			}
		}
	else
		{

		for(var i=0; i<=2; i++)
			{
			fire[i].x=fire[i].x+hsp
			fire[i].y=fire[i].y+vsp
			if(fire[i].image_index>=fire[i].image_number-fire[i].image_speed)
				{
				fire[i].x=irandom_range(bbox_left, bbox_right)
				fire[i].y=irandom_range(bbox_top, bbox_bottom)
				}	
			}
		}
		
	//speed for enemy's run
	if(enemy_action==rocket_soldier.run)
	    {
	    hsp=movespeed*image_xscale
		/*
		if(state==states.grounded)
			{
			if(place_meeting(x+hsp*3, y, o_floor) && !place_meeting(x, y+1, o_slope_platform))
				{
				if(sign(player.x-x)==image_xscale
				&& bbox_bottom<o_camera.screen_bottom)
					{
					vsp=-jumpspeed
					}
				else
					{
					image_xscale=image_xscale*-1
					}
				}
			
			if((!place_meeting(x+hsp, y+1, o_floor)
			&& ow_p==false)
			|| (!place_meeting(x+hsp, y+1, o_floor) 
			&& (!collision_rectangle(bbox_left-6, bbox_bottom, bbox_left, bbox_bottom+1, o_one_way_floor, false, false) 
			|| !collision_rectangle(bbox_right+6, bbox_bottom, bbox_right, bbox_bottom+1, o_one_way_floor, false, false)))
			&& bbox_bottom<o_camera.screen_bottom)
				{
				vsp=-jumpspeed
				}
			}
		*/
	    }
	}
else
	{
	hsp=0
	vsp=0
	}

//locked=false
pushed_ver=false
pushed_hor=false

if(AI_active==true)
	{
	if(jumped==false
	&& state!=states.grounded)
		{
		
		jumped=true
		if(y>=player.y)
			{
			vsp=-jumpspeed
			}
			
		if(!collision_line(x, y, x, o_camera.screen_bottom+16, o_floor, false, false)
		&& !collision_line(x, y, x, o_camera.screen_bottom+16, o_one_way_floor, false, false))
			{
			vsp=-jumpspeed
			}
			
		}

	if(jumped==false
	&& state==states.grounded)
		{
		if(collision_rectangle(x+(10*sign(hsp)), y, x+(20*sign(hsp)), y-30, o_floor, true, false)
		&& (!collision_rectangle(x+(10*sign(hsp)), y-30, x+(20*sign(hsp)), y-60, o_floor, false, false)
		|| !collision_rectangle(x+(10*sign(hsp)), y-60, x+(20*sign(hsp)), y-90, o_floor, false, false)
		|| !collision_rectangle(x+(10*sign(hsp)), y-90, x+(20*sign(hsp)), y-120, o_floor, false, false)))
			{
			jumped=true
			vsp=-jumpspeed
			}
		}
	if(state==states.grounded)
		{
		if(hsp==0 
		&& place_meeting(x+image_xscale, y, o_floor)
		&& abs(player.x-x)<=300)
			{
			image_xscale=image_xscale*-1
			}
		}
	}
	
//renew gravity for enemy instance when enemy touches the ground    
if(state==states.grounded)
    {
    //pushed_ver=true
    grav=0.2
	jumped=false
    }	
if(vsp<6)
    {
    if(state!=states.grounded)
        {
        vsp=vsp+grav
        }
    }





//horizontal collision

//slopes

if(AI_active==true)
	{
	scr_init_conv_belt()
	scr_init_slopes(state, states.grounded)

	scr_init_slopes_ceiling_soldier(state, states.grounded)

	
    
	scr_init_horizontal_collisions()              
	x=hsp_final+x
	x=floor(x)  


	col_v=true
	scr_init_oneway_collisions()  
	scr_init_vertical_collisions()      
    
	    

	//scr_init_oneway_collisions_end()
	
	if(place_meeting(x, y, o_floor))
	    {
	    y=y-1
	    }
	
	y+=vsp
	y=floor(y)
	}
	
if(place_meeting(x, y+1, o_floor)
|| ow_p==true)
    {
	if(state!=states.grounded)
		{
		sprite_index=s_simple_soldier_run
		image_index=irandom_range(0,3)
		}
    state=states.grounded
    }
else
    {
	sprite_index=s_simple_soldier_jump
    state=states.airborne
    }
    


self_bottom=id.bbox_bottom
self_top=id.bbox_top
self_right=id.bbox_right
self_left=id.bbox_left

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
	scr_soldier_death(d_sprite, s_simple_soldier_dead_animated)
	}

if(movespeed==2)
	{
	movespeed=3
	}
else
	{
	movespeed=2
	}
