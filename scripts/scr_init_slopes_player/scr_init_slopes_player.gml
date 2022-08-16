function scr_init_slopes_player(argument0, argument1) {
	//go up
	//argument0 == global state
	//argument1 == state on the ground


	slope_up=false
	slope_down=false
	shit=false
	//yplusplus=0
	
	if(jt_timer>0)
		{
		jt_timer=jt_timer-1
		}
	
	mask_index=s_panthebot_idle_duck
	if(place_meeting(x, y, o_one_way_floor_move) && state!=states.wallcling
	&& jt_timer<=0)
		{

			yplus = 0
			while(place_meeting(x, y-yplus, o_one_way_floor_move)
			&& (yplus) <= abs(1*hsp)) 
				{

				yplus=yplus+(1)
				}   
			if(place_meeting(x+floor(hsp), y-yplus, o_one_way_floor_move))
				{
				while(!place_meeting(x+sign(hsp), y, o_one_way_floor_move)) 
					{
					x+=sign(hsp)
					}
				hsp = 0
				}
			else
				{
				slope_up=true
				slope_down=false
				y -= (yplus)
				y=floor(y)
				}
			
		}
	mask_index=sprite_index
	
	/*
	if(collision_rectangle(bbox_left, bbox_bottom-4, bbox_right, bbox_bottom, o_one_way_floor_move, true, false) && state!=states.wallcling
	&& jt_timer<=0)
		{

			yplus = 0
			while(collision_rectangle(bbox_left, bbox_bottom-4, bbox_right, bbox_bottom-yplus, o_one_way_floor_move, true, false) 
			&& (yplus) <= abs(1*hsp)) 
				{

				yplus=yplus+(1)
				}   
			if(collision_rectangle(bbox_left+floor(hsp), bbox_bottom-4, bbox_right+floor(hsp), bbox_bottom-yplus, o_one_way_floor_move, true, false))
				{
				while(!collision_rectangle(bbox_left+sign(hsp), bbox_bottom-4, bbox_right+sign(hsp), bbox_bottom, o_one_way_floor_move, true, false)) 
					{
					x+=sign(hsp)
					}
				hsp = 0
				}
			else
				{
				slope_up=true
				slope_down=false
				y -= (yplus)
				y=floor(y)
				}
			
		}
	*/
	
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
			/*
			if(yplus!=0)
				{
				show_message(yplus)
				}
			*/
			//yplusplus=yplus	
		    slope_up=true
		    slope_down=false
		    y -= yplus
		    y=floor(y)
		    }
		}



		if(place_meeting(x+floor(hsp), y, o_slope_platform)
		&& jt_timer<=0)
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
				//yplusplus=yplus	
				
		        slope_up=true
		        slope_down=false
		        y -= yplus
		        y=floor(y)
		        }
		    }
		//go down 
		
	
		else 
		if(place_meeting(x+floor(hsp), y, o_one_way_slope) && state!=states.wallcling
		&& jt_timer<=0)
			{
			
			if(!place_meeting(x, y, o_one_way_slope))
				{
				yplus = 0
				while(place_meeting(x+floor(hsp), y-floor(yplus), o_one_way_slope) 
				&& floor(yplus) <= abs(1*hsp)) 
					{
					yplus=yplus+(1)
					}   
				if(place_meeting(x+floor(hsp), y-floor(yplus), o_one_way_slope))
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

					y -= floor(yplus)
					y=floor(y)
					}
				}
			}
			
		else if(argument0==argument1)
		    {
			//if(!place_meeting(x, y, o_one_way_slope)
			//&& jt_timer<=0)
			mask_index=s_panthebot_idle_duck //нужно чтобы корректно работало с движущимися one-way, эта маска ниже, чем обычная
			if(jt_timer<=0)
				{
			    yplus = 8                                                       //Initialize floor(yplus) to maximum slope                                                         
			    while(place_meeting(x+floor(hsp),y+floor(yplus), o_floor) 
				|| place_meeting(x+floor(hsp),y+floor(yplus), o_slope_platform)
			    || place_meeting(x+floor(hsp),y+floor(yplus), o_one_way_floor))
			    && (floor(yplus) >0) 
			        {
			        yplus -=1
			        }
			        //While there's a block at max_slp, keep checking one pixel above it
			    if (!place_meeting(x+floor(hsp), y+floor(yplus), o_floor)
			    && !place_meeting(x+floor(hsp), y+floor(yplus), o_one_way_floor)
				&& !place_meeting(x+floor(hsp), y+floor(yplus), o_slope_platform))                    //If there's an empty space at floor(yplus)...                               
			        {
			        if (place_meeting(x+floor(hsp), y+floor(yplus)+1, o_floor)
					|| place_meeting(x+floor(hsp), y+floor(yplus)+1, o_slope_platform)
			        || place_meeting(x+floor(hsp), y+floor(yplus)+1, o_one_way_floor))                     //Check to see if there's a block beneath it, and if there is....             
			            {
			            slope_up=false
			            slope_down=true
						shit=true
						//show_message("a1")
			            y+=floor(yplus)                                                   //Go there
			            y=floor(y)
			            }
			        }
			    }
			mask_index=sprite_index				//возвращаем как следовает
			}
		
}
