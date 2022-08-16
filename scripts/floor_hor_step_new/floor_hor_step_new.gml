// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function floor_hor_step_new(){
	
	push_hor=false
	push_ver=false


	if(timer<150)
	    {
	    timer=timer+1
	    }

	if(timer>=150)
	    {
	    timer=0
	    hsp=hsp*-1
	    }
		
	var meet=instance_place_list_custom(x+floor(hsp), y, all)
	if(ds_exists(meet, ds_type_list))
		{
		for(i=0; i<ds_list_size(meet); i++)
			{
			var current_inst=ds_list_find_value(meet, i)
			if(current_inst.object_index==o_main_player)
				{
				while(!place_meeting(x+sign(hsp), y, current_inst))
					{
					current_inst.x=current_inst.x-sign(hsp)
					}
				}
			}
		}
	
}