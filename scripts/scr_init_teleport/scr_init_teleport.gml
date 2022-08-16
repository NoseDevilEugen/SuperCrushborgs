// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_teleport(){
	


	
	
	if(primary_action!=primary_actions.teleport
	&& primary_action!=primary_actions.teleport_end)
		{
		if(teleport_cooldown>0)
			{
			teleport_cooldown=teleport_cooldown-1
			}
		}
	
	if(key_gun 
	&& primary_action!=primary_actions.teleport
	&& primary_action!=primary_actions.teleport_end
	&& teleport_cooldown<=0
	&& state!=states.dead)
		{
		if(teleport_charge<30)
			{
			teleport_charge=teleport_charge+1
			}
		}
	
	if(key_gun_released 
	&& teleport_cooldown<=0
	&& primary_action!=primary_actions.teleport
	&& primary_action!=primary_actions.teleport_end
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& state!=states.dead
	&& !place_meeting(x, y, o_boss_gate))
	//&& state!=states.wallcling
	//&& state!=states.ceiling)
		{
		if(teleport_charge<29)
			{
			teleport_charge=10
			}
		else
			{
			teleport_charge=15
			}
			
		if(primary_action==primary_actions.cutscene)
			{
			with(instance_create_layer(x, y, "depth_newest" ,o_player_caps))
				{
				sprite_index=s_shinobot_caps_explode
				}
			if(!audio_is_playing(o_controller.music_array[0]))
				{
				audio_play_sound(o_controller.music_array[0], 1, true)
				}
			teleport_direction=point_direction(x, y, x+(300), y-300)
			last_move=1
			move=1
			}
			
		//teleport straight forward
		if(!key_up
		&& !key_down
		&& primary_action!=primary_actions.cutscene)
			{
			if(state!=states.wallcling)
				{
				teleport_direction=point_direction(x, y, x+(300*image_xscale), y)
				}
			else
				{
				teleport_direction=point_direction(x, y, x-(300*image_xscale), y)
				}
			}
		
		if(key_up
		&& !key_down
		&& primary_action!=primary_actions.cutscene)
			{
			if(move==0)
				{
				teleport_direction=point_direction(x, y, x, y-300)
				}
			if(move!=0)
				{
				teleport_direction=point_direction(x, y, x+(300*move), y-300)
				}
			}
			
		if(!key_up
		&& key_down
		&& primary_action!=primary_actions.cutscene)
			{
			
			if(move==0)
				{
				teleport_direction=point_direction(x, y, x, y+300)
				}
			if(move!=0)
				{
				teleport_direction=point_direction(x, y, x+(300*move), y+300)
				}
			}
		if(!place_meeting(x+sign(lengthdir_x(teleport_speed, teleport_direction)), y+sign(lengthdir_y(teleport_speed, teleport_direction))-2, o_floor)
		|| !place_meeting(x+sign(lengthdir_x(teleport_speed, teleport_direction)), y+sign(lengthdir_y(teleport_speed, teleport_direction))+2, o_floor))
			{
			/*
			if(!place_meeting(x, y-1, o_floor))
				{
				y=y-1
				}
			*/
			
			state=states.airborne
			jump_off=false
			ceiling_obj=noone
			ow_p=false
			ceiling_block=false
			ceiling_rope=false
			jump_off_ceiling=false
			ceiling_acceleration=0
			ceiling_acceleration_stop=0
			hsp=lengthdir_x(teleport_speed, teleport_direction)
		    vsp=lengthdir_y(teleport_speed, teleport_direction)
			
			part_alpha=1
			
			p_blood_dir=point_direction(x, y, x-hsp, y-vsp)   
			part_type_direction(p_blood, p_blood_dir, p_blood_dir, 0, 0)
			part_type_speed(p_blood, 0.5, 1, -0.002, 0)
			part_type_orientation(p_blood, 0, 360, 0, 1, false)
			tele_hsp=hsp
			with(instance_create(x, y, o_special_fx))
				{
				image_speed=0.5
				image_index=0
				image_xscale=other.image_xscale
				sprite_index=s_main_teleport_in
				}
			primary_action=primary_actions.teleport
			}
		}
		
	if((!key_gun 
	||(key_gun && primary_action==primary_actions.teleport))
	&& teleport_charge>0)
		{
		teleport_charge=teleport_charge-1
		}
		//yplusplus=0


}