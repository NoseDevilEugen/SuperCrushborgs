// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_horizontal_collisions_new(){
	if(place_meeting(x+floor(hsp), y, o_floor))        
	    {                                  
	    while(!place_meeting(x+sign(hsp_final), y, o_floor))      
	        {
	        x+=sign(hsp_final)  
	        x=floor(x)  
	        }
	    hsp=0
		
		if(id.object_index==o_player_alt)
			{
			if(primary_action==primary_actions.teleport)
				{
				vsp=0
				}
			}
		}
}