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
		image_speed=0.1
		salto=false
		if(image_index<7)
			{
			hsp=0
			}
		else
			{
			state=states.airborne
			y=y-(6*image_yscale)
			hsp=movespeed*image_xscale
			vsp=-4*image_yscale
			}
		}
	
	if(state==states.airborne)
		{
		
		if(salto==false)
			{
			image_index=8
			image_speed=0.1
			}
			
		if(vsp==0)
			{
			salto=true	
			}
		
		if(salto==true)
			{
			vsp=0
			image_speed=0.5
			if(image_index>=image_number-image_speed)
				{
				image_speed=0.1
				salto=false
				grav=grav*-1
				vsp=1*sign(grav)
				image_yscale=image_yscale*-1
				while(place_meeting(x, y, o_floor))
					{
					y=y-image_yscale
					}
				}
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

if(place_meeting(x+hsp, y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	if(state!=states.grounded)
		{
		hsp=hsp*-1
		image_xscale=image_xscale*-1
		}
	}
	
//scr_init_slopes(enemy_action, jumper.ground)
	
if(place_meeting(x, y, o_block_ship))
	{
	yplus = 0
	while(place_meeting(x, y-yplus, o_block_ship) 
	&& yplus <= abs(1*hsp)) 
		{
		yplus=yplus+(1)
		}   
	if(place_meeting(x+floor(hsp), y-yplus, o_block_ship))
		{
		while(!place_meeting(x+sign(hsp), y, o_block_ship)) 
		    {
		    x+=sign(hsp)
		    }
		hsp = 0
		}
	else
		{
		slope_up=true
		slope_down=false
		y -= yplus
		y=floor(y)
		}
	}

if(place_meeting(x+floor(hsp), y, o_slope_platform))
	{
	yplus = 0
	while(place_meeting(x+floor(hsp), y-yplus, o_slope_platform) 
	&& yplus <= abs(1*hsp)) 
		{
		yplus=yplus+(1)
		}   
	if(place_meeting(x+floor(hsp), y-yplus, o_slope_platform))
		{
		while(!place_meeting(x+sign(hsp), y, o_slope_platform)) 
		    {
		    x+=sign(hsp)
		    }
		hsp = 0
		}
	else
		{
		slope_up=true
		slope_down=false
				
		y -= yplus
		y=floor(y)
		}
	}
//go down 
	
else if(state==states.grounded)
	{
	//mask_index=s_simple_soldier_duck
		
	yplus = 15                                                       //Initialize floor(yplus) to maximum slope                                                         
	while(place_meeting(x+floor(hsp),y+floor(yplus), o_floor) 
	|| place_meeting(x+floor(hsp),y+floor(yplus), o_slope_platform))
	&& (floor(yplus) >0) 
		{
		yplus -=1
		}
		//While there's a block at max_slp, keep checking one pixel above it
	if (!place_meeting(x+floor(hsp), y+floor(yplus), o_floor)
	&& !place_meeting(x+floor(hsp),y+floor(yplus), o_slope_platform))                    //If there's an empty space at floor(yplus)...                               
		{
		if (place_meeting(x+floor(hsp), y+floor(yplus)+1, o_floor)
		|| place_meeting(x+floor(hsp),y+floor(yplus)+1, o_slope_platform))                     //Check to see if there's a block beneath it, and if there is....             
			{
			slope_up=false
			slope_down=true
					
			y+=floor(yplus)                                                   //Go there
			y=floor(y)
			}
		}
	}
scr_init_slopes_ceiling_soldier(state, states.grounded)

scr_init_conv_belt()


scr_init_horizontal_collisions()
    
	
x=hsp_final+x	
x=floor(x)

col_v=true



if((vsp<6 && grav>0)
|| (vsp>-6 && grav<0)
&& state==states.airborne
&& salto==false)
	{
	vsp=vsp+grav
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



if(place_meeting(x, y, o_floor))
	{
	y=y-image_yscale
	}


y=floor(vsp)+y
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
		image_index=0
		}
	state=states.grounded
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

if(hp<=0)
	{
	scr_soldier_death(s_alien_dead, s_fx_alien_explosion)
	}
