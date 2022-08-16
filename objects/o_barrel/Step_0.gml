/// @description Insert description here
// You can write your code in this editor
if(thrown==true)
	{
		
	if(state==states.grounded)
	    {
	    //pushed_ver=true
	    grav=0.2
		jumped=false
	    }	
	if(vsp<6)
	    {
	    if(state!=states.grounded)
	        {
	        vsp=vsp+grav
	        }
	    }	
	
	
	
	scr_init_slopes(state, states.grounded)

	scr_init_conv_belt()
    
	if(hsp_final==0)
		{
		scr_boss_death(sprite_index, 1, my_next_room)
		}
	
	scr_init_horizontal_collisions()
	
	
	
	x=hsp_final+x
	x=floor(x)  


	col_v=true
	
	jump_vsp=vsp
	
	scr_init_vertical_collisions()    
	
	if(place_meeting(x, y+1, o_floor)
	&& jump_vsp>0)
		{
		
		if(jump_vsp>3)
			{
			vsp=-(jump_vsp/2)
			jump_vsp=jump_vsp/2
			}
		else
			{
			vsp=0
			jump_vsp=0
			}
		}
    
	scr_init_oneway_collisions()      

	scr_init_oneway_collisions_end()
	
	if(place_meeting(x, y, o_floor))
	    {
	    y=y-1
	    }
	
	y+=vsp
	y=floor(y)
		
	if(place_meeting(x, y+1, o_floor)
	|| ow_p==true)
	    {
	    state=states.grounded
		image_speed=0.2
	    }
	else
	    {
		//sprite_index=s_simple_soldier_jump
		image_speed=0
	    state=states.airborne
	    }	
		
	hp=scr_boss_get_damage(hp)
	
	if(hp<0)
		{
		scr_boss_death(sprite_index, 1, my_next_room)
		}
		
	if(place_meeting(x+20, y, o_floor) && place_meeting(x-20, y, o_floor))
		{
		scr_boss_death(sprite_index, 1, my_next_room)
		}
	
	if(place_meeting(x, y, o_barrel_destroyer))
		{
		scr_boss_death(sprite_index, 1, my_next_room)
		}
	
	scr_destroy_projectile()
	}