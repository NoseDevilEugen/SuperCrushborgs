function init_zero_collisions() {
	
	//ВСЕ КОЛЛИЗИИ
	
	//переменные для взаимодействия с движущимися блоками
	col=false
	//pushed_ver=false
	pushed_hor=false
	pushed_ver=false    
	
	if(place_meeting(x, y, o_floor))
		{
		block_stuck=true
		}
	else
		{
		block_stuck=false
		}
	
	/*
	if(x+hsp<=o_camera.camera_border_left || x+hsp>=o_camera.camera_border_right)
		{
		hsp=0
		}
	*/
	/*
	if(y+vsp<=o_camera.camera_border_top-64)
		{
		vsp=0
		}
	*/
	
	//скрипт работы с конвеерами
	scr_init_conv_belt()
	
	//scr_init_slopes_oneway(id.state, states.grounded)
	
	//скрипт наклонных поверхностей
	/*
	if((hsp!=0 || vsp!=0))
		{
		scr_init_slopes_player(id.state, states.grounded)
		}
	*/
	scr_init_slopes_player(id.state, states.grounded)
	

	//скрипт наклонных потолков

	scr_init_slopes_ceiling(id.state, states.ceiling)
    
	//скрипт наклонных веревок боже я написал много скриптов тут не так ли
	scr_init_slopes_rope(id.state, states.ceiling)
	
	//скрипт общих горизонтальных коллизий
	scr_init_horizontal_collisions()
	
	scr_init_additional_rope()
	
	//yplus=0
	
	x=hsp_final+x
	x=round(x)                        
	//add_hsp=0
	
	col_v=false     
	//on_slope=false
	
	
	
	//односторонние платформы тут
	scr_init_oneway_collisions()  
	
	
	if(state==states.wallcling
	&& vsp>0
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed)
		{
		if(!place_meeting(x+sign(image_xscale), y+floor(vsp), o_floor))
			{
			while(place_meeting(x+sign(image_xscale), y+sign(vsp), o_floor))
				{
				//show_message("while!")
				y=y+sign(vsp)
				}
			//show_message("брейкпойнт_коллизии")
			vsp=0
			//y=y+1
			if(!place_meeting(x+sign(image_xscale), y, o_hazard))
				{
				x=x+(image_xscale*10)
				
				while(place_meeting(x, y, o_floor))
					{
					y=y+1
					}
				ceiling_obj=instance_place(x, y-1, o_floor)
				ceiling_block=true
				ceiling_rope=false
				state=states.ceiling
				primary_action=primary_actions.ceiling_move
				}
			else
				{
				state=states.airborne
				primary_action=primary_actions.fall
				}
			}
		}
	
	
	if(state==states.wallcling
	&& vsp>=0
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed)
		{
		if(place_meeting(x+sign(image_xscale), y, o_floor) && !place_meeting(x+sign(image_xscale), y+1, o_floor))
			{
			vsp=0
			//y=y+1
			if(!place_meeting(x+sign(image_xscale), y, o_hazard))
				{
				x=x+(image_xscale*10)
				
				while(place_meeting(x, y, o_floor))
					{
					y=y+1
					}
				while(!place_meeting(x, y-1, o_floor))
					{
					y=y-1
					}
				ceiling_obj=instance_place(x, y-1, o_floor)
				ceiling_block=true
				ceiling_rope=false
				state=states.ceiling
				primary_action=primary_actions.ceiling_move
				}
			}
			
		}

	
	
	//скрипт общих вертикальных коллизий
	scr_init_vertical_collisions()    
	//vertical collision
	
	//обычные веревки
	scr_init_basic_ropes()
	
	   
	
	/*
	//тоже для односторонних платформ (но уже не помню что именно оно фиксит)
	if(just_feet!=noone && vsp>0)
	    {
	    while(!place_meeting(x, y+1, just_feet))
	        {
	        y+=1
	        y=floor(y)
	        }
	    vsp=0
	    col_v=true
	    }    

	var var3=(instance_place(x, y, o_one_way_floor))

	if(var3!=noone)
	    {
	    if(place_meeting(x, y+1, o_one_way_floor) 
	    && rectangle_in_rectangle(bbox_right, bbox_top, bbox_left, bbox_bottom, var3.bbox_right, var3.bbox_top, var3.bbox_left, var3.bbox_bottom)==0)
	        {
	        oneway_col=false
	        feet_col=true
	        }
	    }
    
	if(var3==noone)
	    {
	    if(place_meeting(x, y+1, o_one_way_floor))
	        {
	        feet_col=true
	        }
	    }    
    
	if(place_meeting(x, y, o_one_way_floor))
	    {
	    oneway_col=true
	    }
    */

	if(place_meeting(x, y+1, o_floor_moving_ver))
	    {
	    vsp_carry=instance_place(x, y+1, o_floor_moving_ver).vsp
	    }
	else
	    {
	    vsp_carry=0
	    }    

	//при застревании в полу выталкиваешься вверх
	
	
	if(place_meeting(x, y, o_floor))
	    {
	    y=y-1
	    }
	
	//yplusplus=0
	
	
	//подбирание оружия
	if(instance_place(x, y, o_weapon_powerup))
		{
		var powerup=instance_place(x, y, o_weapon_powerup)
		if(powerup.unpick_timer<=0)
			{
			//скрипт обработки поднятого оружия
			scr_powerup_get(powerup.weapon, powerup)
			}
		}
	
	
	
	//скрипт шипов не перименованный из зеро
	scr_zero_spikes_reaction()

}
