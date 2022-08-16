function scr_init_slopes_ceiling_soldier(my_state, all_states) {
	//ceiling slopes



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

	
//go down 
	
else if(my_state==all_states)
	{
	yminus = 15                                                       //Initialize yminus to maximum slope                                                         
	while(place_meeting(x+floor(hsp),y-yminus, o_slope_ceiling) 
	|| place_meeting(x+floor(hsp),y-yminus, o_floor)) 
	&& (yminus >0) 
		{
		yminus -=1
		}
		//While there's a block at max_slp, keep checking one pixel above it
	if (!place_meeting(x+floor(hsp), y-yminus, o_slope_ceiling)
	&& !place_meeting(x+floor(hsp), y-yminus, o_floor))                    //If there's an empty space at yminus...                               
		{
		if (place_meeting(x+floor(hsp), y-yminus-1, o_slope_ceiling)
		|| place_meeting(x+floor(hsp), y-yminus-1, o_floor))                     //Check to see if there's a block beneath it, and if there is....             
		    {
		    slope_up=false
		    slope_down=true
					
		    y-=floor(yminus)                                                  //Go there
		    y=floor(y)
		    }
		}
	}
		


}
