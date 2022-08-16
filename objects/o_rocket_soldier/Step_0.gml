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
	if(abs(player.x-x)>200
	&& (state==states.grounded))
		{
		if(sign(player.x-x)!=0)
			{
			image_xscale=sign(player.x-x)
			}
		}
	if(collision_rectangle(x, y, x+(10*image_xscale), bbox_top, o_floor, false, false)
	&& vsp>=0
	&& abs(player.x-x)<=200)
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
	//speed for enemy's run
	if(enemy_action==rocket_soldier.run)
	    {
		image_speed=0.2
	    hsp=movespeed*image_xscale
		if(state==states.grounded)
			{
			if(point_distance(x, y, player.x, player.y)<150
			&& abs(y-player.y)<10
			&& sign(player.x-x)==image_xscale
			&& rocket_thrown==false)
				{
				hsp=0
				image_index=0
				rocket_thrown=true
				sprite_index=s_rocket_soldier_throw
				enemy_action=rocket_soldier.throw_rocket
				}	
		
			}
		
	    }
	
	if(enemy_action==rocket_soldier.throw_rocket)
		{
		image_speed=0.1
		if(image_index>1)
			{
			if(instance_exists(rocket))
				{
				if(rocket.thrown==false)
					{
					rocket.hsp=3*image_xscale
					rocket.vsp=-3
					rocket.thrown=true
					}
				}
			}
		if(image_index>=1.8)
			{
			//show_message("breakpoint")
			image_index=0
			hsp=movespeed*image_xscale
			sprite_index=s_rocket_soldier_run
			enemy_action=rocket_soldier.run
			}
		}
	if(instance_exists(rocket))	
		{
		with(rocket)
			{
			if(thrown==false)
				{
				image_speed=0
				image_xscale=other.image_xscale
				x=other.x+(6*image_xscale)
				y=other.y-30
				}
			}
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
		if(hsp==0 && place_meeting(x+image_xscale, y, o_floor)
		&& abs(player.x-x)<=200)
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
	scr_init_slopes(state, states.grounded)

	//scr_init_slopes_ceiling_soldier(state, states.airborne)

	scr_init_conv_belt()
    
	scr_init_horizontal_collisions()              
	x=hsp_final+x
	x=floor(x)  


	col_v=true
	scr_init_vertical_collisions()      
    
	scr_init_oneway_collisions()      

	scr_init_oneway_collisions_end()
	
	if(place_meeting(x, y, o_floor))
		{
		//show_message("ълядь")
		y=y-1
		}

	y+=vsp
	y=floor(y)
	}
if(place_meeting(x, y+1, o_floor)
|| ow_p==true)
    {
    state=states.grounded
    }
else
    {
	image_speed=0
	image_index=1
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
	if(instance_exists(rocket))
		{
		if(rocket.thrown==false)
			{
			with(rocket)
				{
				while(place_meeting(x, y, o_floor))
					{
					y=y+1
					}
				}
			rocket.x=x
			rocket.y=y
			rocket.hsp=2*image_xscale
			rocket.vsp=-2
			rocket.thrown=true
			}
		}
	scr_soldier_death(s_simple_soldier_dead, s_simple_soldier_dead_animated)
	}