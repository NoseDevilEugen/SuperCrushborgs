// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_rope_moving_block(my_id, my_player){
if(my_id==my_player.ceiling_obj && my_player.state!=states.grounded)
	{
	with(my_player)
		{
		var add_hsp
		var add_vsp
		add_hsp=(other.hsp)
		add_vsp=(other.vsp)
		if(place_meeting(x+floor(add_hsp), y, o_floor))
			{
			while(!place_meeting(x+sign(add_hsp), y, o_floor))
				{
				x=x+sign(add_hsp)
				}
			add_hsp=0
			}
		x=x+add_hsp
		x=round(x)
		if(place_meeting(x, y+add_vsp, o_floor))
			{
			while(!place_meeting(x, y+sign(add_vsp), o_floor))
				{
				y=y+sign(add_vsp)
				}
			//show_message("БЛЯДЬ")
			ceiling_obj=noone
			state=states.airborne
			vsp=-4
			primary_action=primary_actions.jump
			image_index=0
			add_hsp=0
			add_vsp=0
			}
		y=add_vsp+y
		y=round(y)
		}
	}
}