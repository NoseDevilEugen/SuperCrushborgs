function scr_init_horizontal_collisions() {
	
	if(!place_meeting(x, y, o_one_way_slope))
		{
		if(place_meeting(x+floor(hsp_final), y, o_one_way_slope))
			{
			while(!place_meeting(x+sign(hsp_final), y, o_one_way_slope))
				{
				x=x+sign(hsp)
				}
			hsp=0
			}
		}
	
	if(place_meeting(x+round(hsp_final), y, o_floor))        
	    {                                  
	    while(!place_meeting(x+sign(hsp_final), y, o_floor))      
	        {
	        x+=sign(hsp_final)  
	        x=floor(x)  
	        }
	    hsp=instance_place(x+round(hsp_final), y, o_floor).hsp
		//show_message("here")
	    hsp_carry=0
	    col=true
		
		
		if(id.object_index==o_player_alt)
			{
			if(primary_action==primary_actions.teleport)
				{
				vsp=0
				}
			}
		
		
	    //pushed=instance_place(x+floor(hsp_final), y, o_floor).push
	    //pushed_hor=instance_place(x+floor(hsp_final), y, o_floor).push
		
	    if(instance_place(x+sign(hsp_final), y, o_floor).push==false)
	        {
			
	        hsp_carry=0
	        hsp_pushed=0
	        }
	    if(pushed==false)
	        {
			//show_message("here")
	        hsp_carry=0
	        hsp_final=0
	        //hsp_pushed=0
	        }
	    if(pushed==true)
	        {
				
	        hsp=0
	        hsp_final=hsp_pushed+hsp
	        }
	    }
	else
	    {
	    hsp_carry=0
	    hsp_pushed=0
	    }
    
	
	if(pushed==false)
	    {
	    hsp_carry=0
	    hsp_pushed=0
	    //vsp_carry=0
	    }
    

}
