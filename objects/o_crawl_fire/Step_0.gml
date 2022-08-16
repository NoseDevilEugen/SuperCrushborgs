//if enemy is onscreen

//scr_change_focus()


timer_destroy=timer_destroy-1
if(timer_destroy<=0)
	{
	instance_destroy(id)
	}



if(image_index>=image_number-image_speed)
	{
	image_index=irandom_range(0,2)
	}

//locked=false
pushed_ver=false
pushed_hor=false


//horizontal collision

//slopes

	
//scr_init_slopes(enemy_action, jumper.ground)

scr_init_slopes(state, states.grounded)
//scr_init_slopes_ceiling_soldier(state, states.grounded)

//scr_init_conv_belt()


//scr_init_horizontal_collisions()
    
	
x=hsp_final+x	
x=floor(x)

col_v=true



if(timer_spawn>0)
	{
	timer_spawn=timer_spawn-1
	}
else if(timer_spawn!=-1)
	{
	timer_spawn=-1
	if(place_meeting(x-((bbox_right-bbox_left)*2), y+3, o_floor) 
	&& left==true)
		{
		with(instance_create(x-((bbox_right-bbox_left)), y, o_crawl_fire))
			{
			image_index=irandom_range(0,2)
			left=true
			}
			
		}
	if(place_meeting(x+((bbox_right-bbox_left)*2), y+3, o_floor) 
	&& left==false)
		{
		image_index=irandom_range(0,2)
		instance_create(x+((bbox_right-bbox_left)), y, o_crawl_fire)
		}
	}
	
col_v=true

if(place_meeting(x, y+floor(vsp), o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	hsp=0
	vsp=0
	}




//scr_init_oneway_collisions()      

//scr_init_oneway_collisions_end()
	


y+=vsp
y=floor(y)

/*
if(vsp<-4 && image_yscale==-1
&& place_meeting(x, y, o_one_way_floor))
	{
	image_yscale=1
	vsp=-2
	grav=grav*-1
	}
*/




/*
if(enemy_action!=jumper.ground && ow_p==true)
	{
	image_index=0
	enemy_action=jumper.ground
	state=states.grounded
	}
*/

/*
if(place_meeting(x, y+image_yscale, o_floor))
    {
	if(enemy_action!=jumper.ground)
		{
		image_index=0
		}
    enemy_action=jumper.ground
	state=states.grounded
    }
else
    {
	state=states.airborne
    enemy_action=jumper.air
    }
*/    
     



if(y>=o_camera.camera_border_bottom+64)
    {
    instance_destroy(id)
    }
	


