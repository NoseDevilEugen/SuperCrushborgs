//if enemy is onscreen

scr_change_focus()

if(x>o_camera.screen_left
&& x<o_camera.screen_right
&& y>o_camera.screen_top
&& y<o_camera.screen_bottom)
    {
	AI_active=true
    }

	

//locked=false
pushed_ver=false
pushed_hor=false


if(AI_active==true)
	{
	if(state==states.grounded)
		{
		
		salto=false
		
		if(action==jija2_actions.land
		&& image_index>=image_number-image_speed)
			{
			image_speed=0.2
			action=jija2_actions.sit
			image_index=0
			}
		
		if(action==jija2_actions.sit
		&& image_index>=image_number-image_speed)
			{
			image_speed=0.5
			action=jija2_actions.rise
			image_index=0
			}
		
		if(action==jija2_actions.rise
		&& image_index>=image_number-image_speed)
			{
			y=y-(14*image_yscale)	
			
			action=jija2_actions.fly
			vsp=-4*image_yscale
			image_yscale=image_yscale*-1
			}
			
		}
			
	}
else
	{
	hsp=0
	vsp=0
	}

//horizontal collision

//slopes

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


	
//scr_init_slopes(enemy_action, jumper.ground)

scr_init_slopes(state, states.grounded)
scr_init_slopes_ceiling_soldier(state, states.grounded)

scr_init_conv_belt()


scr_init_horizontal_collisions()
    
	
x=hsp_final+x	
x=floor(x)

col_v=true




	
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

if(place_meeting(x, y+image_yscale, o_floor))
	{
	if(state!=states.grounded)
		{
		state=states.grounded
		action=jija2_actions.land
		image_speed=0.5
		image_index=0
		}
	
	}
else 
	{
	state=states.airborne
	}



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
     

self_bottom=id.bbox_bottom
self_top=id.bbox_top
self_right=id.bbox_right
self_left=id.bbox_left

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}

if(y>=o_camera.camera_border_bottom+64)
    {
    instance_destroy(id)
    }
	
hp=scr_boss_get_damage(hp)	

if(hp<0)
	{
	scr_boss_death(sprite_index, 1, noone)
	}

sprite_index=s_array[action]