function scr_init_slopes_oneway(argument0, argument1) {
	//go up
	//argument0 == global state
	//argument1 == state on the ground

		
	slope_up=false
	slope_down=false
	

	if(place_meeting(x+floor(hsp), y, o_one_way_slope))
		{
		yplus = 0
		while(place_meeting(x+floor(hsp), y-yplus, o_one_way_slope) 
		&& yplus <= abs(1*hsp)) 
		    {
		    yplus=yplus+(1)
		    }   
		if(place_meeting(x+floor(hsp), y-yplus, o_one_way_slope))
		    {
		    while(!place_meeting(x+sign(hsp), y, o_one_way_slope)) 
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
	else if(argument0==argument1)
	        {
	        yplus = 31                                                       //Initialize yplus to maximum slope                                                         
	        while(place_meeting(x+floor(hsp),y+yplus, o_slope_platform) 
	        || place_meeting(x+floor(hsp),y+yplus, o_floor)
	        || place_meeting(x+floor(hsp),y+yplus, o_one_way_floor)
			|| place_meeting(x+floor(hsp),y+yplus, o_one_way_slope) )
	        && (yplus >0) 
	            {
	            yplus -=1
	            }
	            //While there's a block at max_slp, keep checking one pixel above it
	        if (!place_meeting(x+floor(hsp), y+yplus, o_slope_platform)
	        && !place_meeting(x+floor(hsp), y+yplus, o_floor)
	        && !place_meeting(x+floor(hsp), y+yplus, o_one_way_floor)
			&& !place_meeting(x+floor(hsp), y+yplus, o_one_way_slope))                    //If there's an empty space at yplus...                               
	            {
	            if (place_meeting(x+floor(hsp), y+yplus+1, o_slope_platform)
	            || place_meeting(x+floor(hsp), y+yplus+1, o_floor)
	            || place_meeting(x+floor(hsp), y+yplus+1, o_one_way_floor)
				|| place_meeting(x+floor(hsp), y+yplus+1, o_one_way_slope))                     //Check to see if there's a block beneath it, and if there is....             
	                {
	                slope_up=false
	                slope_down=true
	                y+=yplus                                                   //Go there
	                y=floor(y)
	                }
	            }
	        }
}
