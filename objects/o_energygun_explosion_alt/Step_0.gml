/// @description Insert description here
// You can write your code in this editor
if(onscreen==false)
	{
	if(x>o_camera.screen_left
	&& x<o_camera.screen_right
	&& y>o_camera.screen_top
	&& y<o_camera.screen_bottom)
		{
		onscreen=true
		}
	}



//sprite_index=s_machinegun_bullet_idle
if(vsp==0)
	{
	if(basic_vsp>0)
		{
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

	
		else 
			{
			//mask_index=s_simple_soldier_duck
		
			yplus = 15                                                       //Initialize floor(yplus) to maximum slope                                                         
			while(place_meeting(x+floor(hsp),y+floor(yplus), o_floor))
			&& (floor(yplus) >0) 
				{
				yplus -=1
				}
				//While there's a block at max_slp, keep checking one pixel above it
			if (!place_meeting(x+floor(hsp), y+floor(yplus), o_floor))                    //If there's an empty space at floor(yplus)...                               
				{
				if (place_meeting(x+floor(hsp), y+floor(yplus)+1, o_floor))                     //Check to see if there's a block beneath it, and if there is....             
				    {
				    slope_up=false
				    slope_down=true
					
				    y+=floor(yplus)                                                   //Go there
				    y=floor(y)
				    }
				}
		
			}
		}
	if(basic_vsp<0)
		{
		if(place_meeting(x, y, o_block_ship))
		    {
		    yminus = 0
		    while(place_meeting(x, y+yminus, o_block_ship) 
		    && yminus <= abs(1*hsp)) 
		        {
		        yminus=yminus+(1)
		        }   
		    if(place_meeting(x+floor(hsp), y+yminus, o_block_ship))
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
		        y += (yminus)
		        y=floor(y)
		        }
		    }

	
		if(place_meeting(x+floor(hsp), y, o_slope_ceiling))
		    {
		    yminus = 0
		    while(place_meeting(x+floor(hsp), y+yminus, o_slope_ceiling) 
		    && yminus <= abs(1*hsp)) 
		        {
		        yminus=yminus+(1)
		        }   
		    if(place_meeting(x+floor(hsp), y+yminus, o_slope_ceiling))
		        {
		        while(!place_meeting(x+sign(hsp), y, o_slope_ceiling)) 
		            {
		            x+=sign(hsp)
		            }
		        hsp = 0
		        }
		    else
		        {
		        slope_up=true
		        slope_down=false
		        y += floor(yminus)
		        y=floor(y)
		        }
		    }
	
		//go down    
		else 
		    {
		    yminus = 15                                                       //Initialize yminus to maximum slope                                                         
		    while(place_meeting(x+floor(hsp),y-yminus, o_floor)) 
		    && (yminus >0) 
		        {
		        yminus -=1
		        }
		        //While there's a block at max_slp, keep checking one pixel above it
		    if (place_meeting(x+floor(hsp), y-yminus, o_floor))                    //If there's an empty space at yminus...                               
		        {
		        if (place_meeting(x+floor(hsp), y-yminus-1, o_floor))                     //Check to see if there's a block beneath it, and if there is....             
		            {
		            slope_up=false
		            slope_down=true
					
		            y-=floor(yminus)                                                  //Go there
		            y=floor(y)
		            }
		        }
		    }
		}	
	
	}


if(place_meeting(x+floor(hsp), y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	if(instance_place(x+sign(hsp), y, o_floor).object_index!=o_destructible)
		{
		instance_destroy(id)
		}
	}
x=x+floor(hsp)
x=floor(x)
	
if(place_meeting(x, y+floor(vsp), o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	if(instance_place(x, y+sign(vsp), o_floor).object_index!=o_destructible)
		{
		instance_destroy(id)
		}
	}
y=y+floor(vsp)
y=floor(y)

	
if(onscreen==true)
	{
	scr_destroy_projectile()
	}
