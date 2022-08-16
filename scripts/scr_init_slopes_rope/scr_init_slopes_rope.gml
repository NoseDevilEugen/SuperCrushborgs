function scr_init_slopes_rope(my_state, my_ceiling) {
	//ceiling slopes ropes


if(place_meeting(x+floor(hsp), y, o_rope_angle) && my_state==my_ceiling)
	{
	yplus = 0
	while(place_meeting(x+floor(hsp), y+yplus, o_rope_angle) 
	&& yplus <= abs(1*hsp)) 
	    {
	    yplus=yplus+(1)
	    }   
	if(place_meeting(x+floor(hsp), y+yplus, o_rope_angle))
	    {
	    while(!place_meeting(x+sign(hsp), y, o_rope_angle)) 
	        {
	        x+=sign(hsp)
	        }
	    hsp = 0
	    }
	else
	    {
	    slope_up=true
	    slope_down=false
				
	    y += floor(yplus)
	    y=floor(y)
	    }
	}
//go down    
else if(my_state==my_ceiling)
	{
	yplus = 15                                                       //Initialize yplus to maximum slope                                                         
	while(place_meeting(x+floor(hsp),y-yplus, o_rope_angle) 
	|| place_meeting(x+floor(hsp),y-yplus, o_rope)
	|| place_meeting(x+floor(hsp),y-yplus, o_floor)) 
	&& (yplus >0) 
	    {
	    yplus -=1
	    }
	    //While there's a block at max_slp, keep checking one pixel above it
	if (!place_meeting(x+floor(hsp), y-yplus, o_rope_angle)
	|| !place_meeting(x+floor(hsp),y-yplus, o_rope)
	|| !place_meeting(x+floor(hsp),y-yplus, o_floor))                    //If there's an empty space at yplus...                               
	    {
	    if (place_meeting(x+floor(hsp), y-yplus-1, o_rope_angle)
		|| place_meeting(x+floor(hsp),y-yplus-1, o_rope)
		|| place_meeting(x+floor(hsp),y-yplus-1, o_floor))                     //Check to see if there's a block beneath it, and if there is....             
	        {
	        slope_up=false
	        slope_down=true
			//show_message("Веревка!")
	        y-=floor(yplus)                                                   //Go there
	        y=floor(y)
	        }
	    }
	}
	    


}
