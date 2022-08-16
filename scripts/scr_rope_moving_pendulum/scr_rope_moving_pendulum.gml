// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_rope_moving_pendulum(my_id, my_player){
if(my_id==my_player.ceiling_obj && my_player.state!=states.grounded)
	{
	with(my_player)
		{
		var add_hsp
		var add_vsp
		add_hsp=floor(other.hsp)
		add_vsp=floor(other.vsp)
		if(place_meeting(x+add_hsp, y, o_floor))
			{
			while(!place_meeting(x+sign(add_hsp), y, o_floor))
				{
				x=x+sign(add_hsp)
				}
			add_hsp=0
			}
		x=x+add_hsp
		x=floor(x)
		if(place_meeting(x, y+add_vsp, o_floor))
			{
			while(!place_meeting(x, y+sign(add_vsp), o_floor))
				{
				y=y+sign(add_vsp)
				}
			ceiling_obj=noone
			state=states.airborne
			vsp=-4
			primary_action=primary_actions.jump
			image_index=0
			add_hsp=0
			add_vsp=0
			}
		//vsp=add_vsp
		y=add_vsp+y
		y=floor(y)
		}
	}
}