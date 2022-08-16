function smooth_transitions_new() {
	//player's actions
	//set "grounded" state
	//if there is a floor underthe feet, there you are on the ground

	//тут 700+ строк кода, так что боже еже
	
	if(!instance_exists(ceiling_obj))
		{
		ceiling_obj=noone
		}
	
	if(primary_action==primary_actions.cutscene)
		{
		layer=layer_get_id("depth_newest")
		}
	else
		{
		layer=layer_get_id("depth_player")
		}
	
	scr_add_live()
	
	exp_charge=clamp(exp_charge, 0, 60)
	
	//проверяем игрока на стояние на земле
	if((place_meeting(x, y+1, o_floor) 
	|| ow_p==true)
	&& state!=states.dead)
	    {
		
		air_hsp=0
		jump_off=false
		jump_off_ceiling=false
		ceiling_obj=noone
		ceiling_block=false
		ceiling_rope=false
		
	    state=states.grounded
	    }
    
	//таймер для поиска багов на записи видео
	if(timer<99999999999)
	    {
	    timer=timer+1
	    }
    
	else
	    {
	    timer=0
	    }


	if(primary_action==primary_actions.cutscene)
		{
		move=0
		image_xscale=1
		
		}

	if(primary_action==primary_actions.teleport)
		{
		hsp=tele_hsp
		if(part_alpha>0)
			{
			part_alpha=part_alpha-0.05
			}
		part_type_alpha1(p_blood, part_alpha)
		if(teleport_charge==0)
			{
			part_type_life(p_blood, 10, 20)
			}
		
		if(hsp!=0 || vsp!=0)
			{
			
			if(teleport_charge mod 2==0)
				{
				part_emitter_region(p_blood_sys, p_blood_emit, x-16, x+16, y+16, y-16, ps_shape_rectangle, 1)
				part_emitter_burst(p_blood_sys, p_blood_emit, p_blood, 2)
				}
			}
		}
	

	if(primary_action==primary_actions.teleport
	&& 
	((hsp==0 && vsp==0) || (teleport_charge<=0)))
		{
		var i
		for(i=0; i<8; i++)
			{
			with(instance_create_layer(x+hsp, y+vsp, "Bullets", o_energygun_explosion))
				{
				firepower=1
				timer=-2
				parent=other.id
				hsp=lengthdir_x(5, other.explosion_dir[i])
				vsp=lengthdir_y(5, other.explosion_dir[i])
				}
			}
		hsp=0
		vsp=0
		teleport_charge=0
		teleport_cooldown=30
		/*
		with(instance_create(x, y, o_special_fx))
			{
			depth=other.depth+1
			parent=other
			sprite_index=s_main_teleport_in
			image_index=1
			image_speed=0.2
			}
		*/
		if(invul_time<=10)
			{
			invul_time=10
			}
		primary_action=primary_actions.teleport_end
		}
	
	if(primary_action==primary_actions.teleport_end)
		{
		
		if((collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope, false, false)!=noone
		&& collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope, false, false)!=instance_place(x, y, o_rope))
		|| (place_meeting(x, y-1, o_floor) && !place_meeting(x, y, o_hazard)))
			{
			state=states.ceiling
			primary_action=primary_actions.ceiling
			}
		else
			{
			primary_action=primary_actions.idle
			}
		
		}

	//беспричинные англоязычные косноязычные комменты
	//set "airborne state"
	//if there is no floor then you're in the air
	if(!place_meeting(x, y+1, o_floor) 
	&& ow_p==false
	&& state!=states.wallcling
	&& state!=states.ceiling
	&& state!=states.dead)
	//&& (!place_meeting(x, y+1, o_one_way_floor))))

	    {
		ceiling_obj=noone
		ceiling_block=false
		ceiling_rope=false
	    state=states.airborne
	    }
    

	
	//set wallslide
	//if you're pushing yoursef to the fall    
	if(state!=states.grounded 
	&& (
	place_meeting(x+move, y, o_floor) 
	&& (!place_meeting(x+move, y, o_slope_ceiling)
	|| (place_meeting(x+move, y, o_slope_ceiling) && !place_meeting(x, y-1, o_slope_ceiling)
	&& state!=states.ceiling))
	)
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& place_meeting(x+sign(image_xscale), y-32, o_floor)
	&& place_meeting(x+sign(image_xscale), y-16, o_floor)
	&& !place_meeting(x, y, o_hazard))
	    {
		air_hsp=0
		jump_off=false
		jump_off_ceiling=false
		image_xscale=move
	    state=states.wallcling
		if(primary_action==primary_actions.teleport)
			{
			var i
			for(i=0; i<8; i++)
				{
				with(instance_create_layer(x+hsp, y+vsp, "Bullets", o_energygun_explosion))
					{
					firepower=1
					timer=-2
					parent=other.id
					hsp=lengthdir_x(5, other.explosion_dir[i])
					vsp=lengthdir_y(5, other.explosion_dir[i])
					}
				}
			hsp=0
			vsp=0
			teleport_charge=0
			teleport_cooldown=30	
			}
	    primary_action=primary_actions.wallcling
	    }
	
	if(state==states.wallcling
	&& !place_meeting(x+image_xscale, y, o_floor))
		{
		state=states.airborne
		primary_action=primary_actions.fall
		jump_off=false
		jump_off_ceiling=false
		ceiling_acceleration=0
		ceiling_acceleration_stop=0
		hsp=0
		vsp=0
		}
	
	//персонаж цепляется за стену
	if(state==states.wallcling
	&& place_meeting(x+sign(image_xscale), y, o_floor)
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed)
		{
		air_hsp=0
		ceiling_obj=noone
		ceiling_block=false
		ceiling_rope=false
		jump_off=false
		jump_off_ceiling=false
		ceiling_acceleration=0
		ceiling_acceleration_stop=0
	
		if(!key_up
		&& !key_down
		&& primary_action!=primary_actions.wallcling)
			{
			primary_action=primary_actions.wallcling
			}
		
		//персонаж ползёт по стене
		if((key_up || key_down)
		&& !key_lock
		&& !key_combo
		&& primary_action!=primary_actions.wallmove)
			{
			primary_action=primary_actions.wallmove
			}
		
		//персонаж целится или стреляет на стене
		if(key_down
		&& move!=-sign(image_xscale)
		&& (key_lock || key_combo)
		&& primary_action!=primary_actions.wallcling_down)
			{
			primary_action=primary_actions.wallcling_down
			}
		
		if(key_up
		&& move!=-sign(image_xscale)
		&& (key_lock || key_combo)
		&& primary_action!=primary_actions.wallcling_up)
			{
			primary_action=primary_actions.wallcling_up
			}
		
		if(key_up
		&& move==-sign(image_xscale)
		&& (key_lock || key_combo)
		&& primary_action!=primary_actions.wallcling_up_diagonal)
			{
			primary_action=primary_actions.wallcling_up_diagonal
			}
		
		if(key_down
		&& move==-sign(image_xscale)
		&& (key_lock || key_combo)
		&& primary_action!=primary_actions.wallcling_down_diagonal)
			{
			primary_action=primary_actions.wallcling_down_diagonal
			}
		
		//спрыгиваем со стены если нажимаем в противоположную сторону и прыжок
		if(key_jump && move==-sign(image_xscale))
			{
			
			image_xscale=move
			
			//при нажатии вниз спрыгиваем вниз, без него спрыгиваем вверх
			if(!key_down)
				{
				vsp=-8
				}
			else
				{
				vsp=-1
				}
			state=states.airborne
			primary_action=primary_actions.jump
			}
		if(key_jump 
		&& move==0
		&& key_down)
			{
			
			//image_xscale=move
			
			//при нажатии вниз спрыгиваем вниз, без него спрыгиваем вверх

			vsp=-1

			state=states.airborne
			primary_action=primary_actions.jump
			}
		}

	//слезание со стены
	
	if(state==states.wallcling
	&& !place_meeting(x+sign(image_xscale), y, o_floor)
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed)
		{
		air_hsp=0
		if(key_down && !key_jump && !place_meeting(x, y+1, o_floor)
		&& !place_meeting(x+sign(image_xscale), y, o_hazard))
			{
			x=x+image_xscale*movespeed
			ceiling_obj=instance_place(x, y-1, o_floor)
			ceiling_block=true
			ceiling_rope=false
			state=states.ceiling
			primary_action=primary_actions.ceiling
			}
		/*
		if(key_up && !place_meeting(x, y+1, o_floor))
			{
			state=states.airborne
			primary_action=primary_actions.jump
			last_move=sign(image_xscale)
			}
		*/
		}
	
	//запрыгиваем на стену с ее верха REDACTED
	if(state==states.wallcling
	&& primary_action==primary_actions.wallmove
	&& (key_up || vsp<0)
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& state!=states.dead)
		{	
		if(!place_meeting(x+sign(image_xscale), y-32, o_floor)
		&& !key_jump)
		//&& instance_place(x+image_xscale, y, o_floor)!=noone)
			{
			jump_off=true
			last_move=sign(image_xscale)
			vsp=-6-abs(instance_place(x+image_xscale, y, o_floor).vsp)
			//x=x+image_xscale
			hsp=movespeed*sign(image_xscale)
			state=states.airborne
			primary_action=primary_actions.jump
			}	
		}
	
	/*
	if(state==states.wallcling
	&& primary_action==primary_actions.wallmove
	&& key_down
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed)
		{
		if(!place_meeting(x+sign(image_xscale), y+floor(vsp), o_floor))
			{
			while(place_meeting(x+sign(image_xscale), y+sign(vsp), o_floor))
				{
				show_message("while!")
				y=y+sign(vsp)
				}
			vsp=0
			y=y+1
			x=x+image_xscale*movespeed
			ceiling_obj=instance_place(x, y-1, o_floor)
			ceiling_block=true
			ceiling_rope=false
			state=states.ceiling
			primary_action=primary_actions.ceiling
			}
		}
		*/
		
	
	//запрыгиваем на стену с ее верха
	if(state==states.wallcling
	&& primary_action==primary_actions.wallmove
	&& (key_up || vsp<0)
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed)
		{
		if(!place_meeting(x+sign(image_xscale), y, o_floor)
		&& !key_jump)
			{
			jump_off=true
			last_move=sign(image_xscale)
			vsp=-4
			//x=x+image_xscale
			hsp=movespeed*sign(image_xscale)
			state=states.airborne
			primary_action=primary_actions.jump
			}
			
		//если есть потолок, то зацепимся за него
		if(place_meeting(x, y-1, o_floor) 
		&& state!=states.ceiling
		&& !place_meeting(x, y, o_hazard))
			{
			ceiling_block=true
			ceiling_rope=false
			state=states.ceiling
			primary_action=primary_actions.ceiling
			}
		}
	
	/*
	//цепляемся за потолок со стены
	if(state==states.wallcling
	&& primary_action==primary_actions.wallmove
	&& (key_down || vsp>0)
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed)
		{
		//тут какой-то очень дикий код, но он точно нужен и точно работает
		//с его помощью проверяется, если персонаж слезает со стены ВНИЗ и цепляется за потолок на уровне своих рук
		
		if(place_meeting(x+sign(image_xscale), y-1, o_floor) 
		&& !place_meeting(x+sign(image_xscale), y, o_floor) 
		&& state!=states.ceiling)
			{
			x=x+sign(image_xscale)
			ceiling_obj=instance_place(x, y-1, o_floor)
			ceiling_block=true
			ceiling_rope=false
			state=states.ceiling
			primary_action=primary_actions.ceiling
			}
		else if(place_meeting(x+sign(image_xscale), y-2, o_floor) 
		&& !place_meeting(x+sign(image_xscale), y, o_floor) 
		&& state!=states.ceiling)
			{
			x=x+image_xscale*movespeed
			y=y-1
			
			ceiling_obj=instance_place(x, y-1, o_floor)
			ceiling_block=true
			ceiling_rope=false
			state=states.ceiling
			primary_action=primary_actions.ceiling
			}
		else if(place_meeting(x+sign(image_xscale), y-3, o_floor) 
		&& !place_meeting(x+sign(image_xscale), y, o_floor) 
		&& state!=states.ceiling)
			{
			//x=x+sign(image_xscale)
			x=x+image_xscale*movespeed
			y=y-2
			
			ceiling_obj=instance_place(x, y-1, o_floor)
			ceiling_block=true
			ceiling_rope=false
			state=states.ceiling
			primary_action=primary_actions.ceiling
			}
		}

	*/
	//здесь был суперкостыль для цепляния за веревки, но теперь он не костыль
	if(state==states.airborne
	&& key_up
	&& place_meeting(x, y-1, o_floor)
	&& primary_action!=primary_actions.knockback
	
	&& primary_action!=primary_actions.destroyed
	&& !place_meeting(x, y, o_hazard)
	)
		{
		ceiling_block=true
		ceiling_rope=false
		//y=y+36
		//sprite_index=s_main_ceiling
		state=states.ceiling
		if(primary_action==primary_actions.teleport)
			{
			var i
			for(i=0; i<8; i++)
				{
				with(instance_create_layer(x+hsp, y+vsp, "Bullets", o_energygun_explosion))
					{
					firepower=1
					timer=-2
					parent=other.id
					hsp=lengthdir_x(5, other.explosion_dir[i])
					vsp=lengthdir_y(5, other.explosion_dir[i])
					}
				}
			hsp=0
			vsp=0
			teleport_charge=0
			teleport_cooldown=30	
			primary_action=primary_actions.ceiling
			}
		primary_action=primary_actions.ceiling
		//y=y+bbox_top_offset
		}
	
	//перелезание с веревок на блоки, пока state==ceiling
	if(state==states.ceiling
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed)
		{
		
		/*
		if(place_meeting(x, y, o_boss_gate))
			{
			y=y+1
			hsp=0
			vsp=0
			state=states.airborne
			primary_action=primary_actions.fall
			jump_off=false
			jump_off_ceiling=false
			ceiling_acceleration=0
			ceiling_acceleration_stop=0
			}
		*/
		
		ceiling_obj=noone
		
		if(ceiling_rope==false)
			{
			ceiling_obj=collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_floor, true, false)
			//ceiling_obj=collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_floor, true, false)
			ceiling_block=true
			}
		if(ceiling_rope==true)
			{
			if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope, true, false))
				{
				ceiling_obj=collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope, true, false)
				}
			else if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope_angle, true, false))
				{
				ceiling_obj=collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope_angle, true, false)
				}
			//ceiling_obj=instance_place(x, y-1, o_rope)
			}
		
		air_hsp=0
		vsp=0
		jump_off=false
		jump_off_ceiling=false
		ceiling_acceleration=0
		ceiling_acceleration_stop=0
	
		if(move==0
		&& !key_up
		&& !key_down)
			{
			primary_action=primary_actions.ceiling
			}
		
		//движение по потолку
		if(move!=0 
		&& !key_combo
		&& !key_lock
		&& primary_action!=primary_actions.ceiling_move)
			{
			primary_action=primary_actions.ceiling_move
			}
		
		//стреляние или прицеливание на потолке в разные стороны
		if((key_lock || key_combo)
		&& !key_up
		&& !key_down
		&& move!=0
		&& primary_action!=primary_actions.ceiling)
			{
			image_index=0
			primary_action=primary_actions.ceiling
			}
	
		if(key_up
		&& !key_down
		&& move==0
		&& primary_action!=primary_actions.ceiling_up)
			{
			image_index=0
			primary_action=primary_actions.ceiling_up
			}
		
		if(!key_up
		&& key_down
		&& move==0
		&& primary_action!=primary_actions.ceiling_down)
			{
			image_index=0
			primary_action=primary_actions.ceiling_down
			}
		
		if((key_lock || key_combo)
		&& !key_up
		&& key_down
		&& move!=0
		&& primary_action!=primary_actions.ceiling_diagonal_down)
			{
			image_index=0
			primary_action=primary_actions.ceiling_diagonal_down
			}
		
		if((key_lock || key_combo)
		&& key_up
		&& !key_down
		&& move!=0
		&& primary_action!=primary_actions.ceiling_diagonal_up)
			{
			image_index=0
			primary_action=primary_actions.ceiling_diagonal_up
			} 
		
		//если игрок на потолке, но не движется, то обнуляем гор.скорость
		if(primary_action!=primary_actions.ceiling_move
		&& primary_action!=primary_actions.teleport)
			{
			//show_message("here")
			hsp=0
			}
		
		
		if(key_jump 
		&& !key_down
		&& ceiling_rope==true)
			{
			ceiling_obj=noone
			ceiling_rope=false
			vsp=-jumpspeed
			state=states.airborne
			primary_action=primary_actions.jump
			}
	
		if(slope_down==false 
		&& ceiling_block==true
		&& !place_meeting(x+(movespeed*move), y-1, o_floor)
		&& !place_meeting(x, y, o_boss_gate)
		&& !place_meeting(x+(movespeed*move), y-5, o_hazard))
			{
			if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope, true, false)==noone && !place_meeting(x, y-1, o_slope_ceiling)
			&& collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope_angle, true, false)==noone)
				{
				if(move!=0)
					{
					x=x+(movespeed*move)
					jump_off_ceiling=true
					//x=x+image_xscale
					hsp=movespeed*sign(image_xscale)
					ceiling_acceleration=image_xscale*2
					ceiling_acceleration_stop=image_xscale*-4
					}
				ceiling_obj=noone
				ceiling_block=false
				
				vsp=-(jumpspeed-3)
				primary_action=primary_actions.jump
				state=states.airborne
				}
			else if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope, true, false))
				{
				if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope, true, false).bbox_bottom+1==bbox_top)
					{
					ceiling_block=false
					ceiling_rope=true
					}
				else
					{
					if(move!=0)
						{
						hsp=movespeed*sign(image_xscale)
						jump_off_ceiling=true
						ceiling_acceleration=image_xscale*2
						ceiling_acceleration_stop=image_xscale*-4
						}
					ceiling_obj=noone
					ceiling_block=false
					
					//x=x+image_xscale
					
					primary_action=primary_actions.jump
					state=states.airborne
					
					vsp=-(jumpspeed-3)
					}
				}
			}
		
		if(slope_down==false
		&& ceiling_rope==true
		&& collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope, true, false)==noone
		&& collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_rope_angle, true, false)==noone)
			{
			if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top-1, o_floor, false, false)==noone)
				{
				//y=y-yplus
				ceiling_rope=false
				ceiling_obj=noone
				//jump_off_ceiling=true
				//x=x+image_xscale
				//hsp=movespeed*sign(image_xscale)
				/*
				if(place_meeting(x, y-5, o_hazard))
					{
					
					}
				*/
				
				//show_message("here")
				
				
				primary_action=primary_actions.jump
				state=states.airborne
				vsp=-4
				last_move=sign(image_xscale)
				//тут спрыгивание с ракеты!
				//ceiling_acceleration=image_xscale*3
				//ceiling_acceleration_stop=image_xscale*-4
				//vsp=-(jumpspeed-1)
				}
			else
				{
				ceiling_rope=false
				ceiling_block=true
				}
			}
		
		if(!place_meeting(x, y-1, o_floor)
		&& ceiling_block==true)
			{
			ceiling_block=false
			ceiling_rope=true
			}
	
		if(key_jump && key_down)
			{
			if(instance_place(x, y-1, o_rope)!=noone)
				{
				vsp=abs(instance_place(x, y-1, o_rope).vsp)
				y=y+4+abs(instance_place(x, y-1, o_rope).vsp)
				}
			else
				{
				vsp=0
				y=y+4
				}
			
			//vsp=2
			ceiling_obj=noone
			ceiling_rope=false
			ceiling_block=false
			state=states.airborne
			primary_action=primary_actions.fall
			}
	
		/*
		if(primary_action==primary_actions.ceiling_move)
			{
			if(place_meeting(x+move, y, o_floor))
				{
				state=states.wallcling
				primary_action=primary_actions.wallcling
				}
			}
		*/
		}
    
	//state_machine for idle and running
	//if you're standing onthe ground then jumps reset    
	if(state==states.grounded
	//&& (!key_down && !collision_rectangle(bbox_left, y-sprite_get_bbox_top(s_array[primary_actions.idle]), bbox_right, bbox_bottom, o_floor, false, false))
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.teleport
	&& primary_action!=primary_actions.cutscene)
	    {
	    jumps=jumpsmax
	    //here listed ground attacks and moves that should override "idle" state
	    //if you're not move and not idle, not attacking nor hookshoting
	    jump_off_ceiling=false
		jump_off=false
		ceiling_acceleration=0
		ceiling_acceleration_stop=0
	    if(move==0 
	    //movements should not be overriden
	    && primary_action!=primary_actions.idle 
	    && primary_action!=primary_actions.knockback
	    //attacks should not be override
	    && primary_action!=primary_actions.destroyed
		)
	    //then you're idle
	        {
			if(primary_action==primary_actions.duck)
				{
				if(!collision_rectangle(bbox_left, y-20, bbox_right, bbox_bottom, o_floor, true, false))
					{
					image_index=0
					buffer=false
					//dashspeed=0
					primary_action=primary_actions.idle
					}
				}
			else
				{
				image_index=0
				buffer=false
				//dashspeed=0
				primary_action=primary_actions.idle
				}
	        }
		
		if(move==0 
	    //movements should not be overriden
		&& key_up
	    && primary_action!=primary_actions.idle_up 
	    && primary_action!=primary_actions.knockback
		&& primary_action!=primary_actions.cutscene
	    //attacks should not be override
	    && primary_action!=primary_actions.destroyed)
	    //then you're idle
	        {
	        if(primary_action==primary_actions.duck)
				{
				if(!collision_rectangle(bbox_left, y-20, bbox_right, bbox_bottom, o_floor, true, false))
					{
					image_index=0
					buffer=false
					//dashspeed=0
					primary_action=primary_actions.idle_up
					}
				}
			else
				{
				image_index=0
				buffer=false
				//dashspeed=0
				primary_action=primary_actions.idle_up
				}
	        }
		
		if(move==0 
	    //movements should not be overriden
		&& key_down
		&& key_lock
	    && primary_action!=primary_actions.idle_down 
	    && primary_action!=primary_actions.knockback
		&& primary_action!=primary_actions.cutscene
	    //attacks should not be override
	    && primary_action!=primary_actions.destroyed)
	    //then you're idle
	        {
			if(primary_action==primary_actions.duck)
				{
				if(!collision_rectangle(bbox_left, y-20, bbox_right, bbox_bottom, o_floor, true, false))
					{
					image_index=0
					buffer=false
					//dashspeed=0
					primary_action=primary_actions.idle_down
					}
				}
			else
				{
				image_index=0
				buffer=false
				//dashspeed=0
				primary_action=primary_actions.idle_down
				}				
	        }
		
		if(move==0 
	    //movements should not be overriden
		&& key_down
		&& !key_lock
	    && primary_action!=primary_actions.duck 
	    && primary_action!=primary_actions.knockback
		&& primary_action!=primary_actions.teleport
		&& state!=states.dead
	    //attacks should not be override
	    && primary_action!=primary_actions.destroyed
		&& primary_action!=primary_actions.cutscene)
	    //then you're idle
	        {
			

				//внимание! если закомментить здесь hsp=0 то после приземления с прыжка
				//игрок будет скользить на пузе вперед в направлении прыжка!
				hsp=0
			
			
		        image_index=0
		        buffer=false
		        //dashspeed=0
		        primary_action=primary_actions.duck
	        }
			
			
		if(primary_action==primary_actions.duck)
			{
			if(collision_rectangle(bbox_left, y-20, bbox_right, bbox_bottom, o_floor, true, false))
				{
				primary_action=primary_actions.duck
				}
			}
		
	    //if you're moving on the ground but not dashing, then you must be run
	    if(move!=0 
	    && primary_action!=primary_actions.run
	    && primary_action!=primary_actions.destroyed
		&& state!=states.dead
		&& !key_up
		&& !key_down
		&& primary_action!=primary_actions.cutscene)
	        {
	        if(primary_action==primary_actions.duck)
				{
				if(!collision_rectangle(bbox_left, y-20, bbox_right, bbox_bottom, o_floor, true, false))
					{
					//image_index=0
					buffer=false
					//dashspeed=0
					primary_action=primary_actions.run
					}
				}
			else
				{
				//image_index=0
				buffer=false
				//dashspeed=0
				primary_action=primary_actions.run
				}
	        }
	    
		if(move!=0 
	    && primary_action!=primary_actions.run_up
	    && primary_action!=primary_actions.destroyed
		&& state!=states.dead
		&& primary_action!=primary_actions.cutscene
		&& key_up
		&& !key_down)
	        {
	        if(primary_action==primary_actions.duck)
				{
				if(!collision_rectangle(bbox_left, y-20, bbox_right, bbox_bottom, o_floor, true, false))
					{
					//image_index=0
					buffer=false
					//dashspeed=0
					primary_action=primary_actions.run_up
					}
				}
			else
				{
				//image_index=0
				buffer=false
				//dashspeed=0
				primary_action=primary_actions.run_up
				}
	        }		
		
		if(move!=0 
	    && primary_action!=primary_actions.run_down
	    && primary_action!=primary_actions.destroyed
		&& primary_action!=primary_actions.cutscene
		&& state!=states.dead
		&& !key_up
		&& key_down)
	        {
	        if(primary_action==primary_actions.duck)
				{
				if(!collision_rectangle(bbox_left, y-20, bbox_right, bbox_bottom, o_floor, true, false))
					{
					//image_index=0
					buffer=false
					//dashspeed=0
					primary_action=primary_actions.run_down
					}
				}
			else
				{
				//image_index=0
				buffer=false
				//dashspeed=0
				primary_action=primary_actions.run_down
				}
	        }	
	
		//прицел в разные стороны от держания кнопки лок-она
		if(move!=0
		&& key_lock
		&& key_up
		&& !key_down
		&& primary_action!=primary_actions.idle_diagonal_up
		&& primary_action!=primary_actions.cutscene)
			{
			if(primary_action==primary_actions.duck)
				{
				if(!collision_rectangle(bbox_left, y-20, bbox_right, bbox_bottom, o_floor, true, false))
					{
					//image_index=0
					buffer=false
					//dashspeed=0
					primary_action=primary_actions.idle_diagonal_up
					}
				}
			else
				{
				//image_index=0
				buffer=false
				//dashspeed=0
				primary_action=primary_actions.idle_diagonal_up
				}
			}
	
		if(move!=0
		&& key_lock
		&& key_down
		&& !key_up
		&& primary_action!=primary_actions.idle_diagonal_down
		&& primary_action!=primary_actions.cutscene)
			{
			if(primary_action==primary_actions.duck)
				{
				if(!collision_rectangle(bbox_left, y-20, bbox_right, bbox_bottom, o_floor, true, false))
					{
					image_index=0
					buffer=false
					//dashspeed=0
					primary_action=primary_actions.idle_diagonal_down
					}
				}
			else
				{
				image_index=0
				buffer=false
				//dashspeed=0
				primary_action=primary_actions.idle_diagonal_down
				}
			}
		
		if(move!=0
		&& key_lock
		&& (!key_down && !collision_rectangle(bbox_left, y-20, bbox_right, bbox_bottom, o_floor, true, false))
		&& !key_up
		&& primary_action!=primary_actions.idle
		&& primary_action!=primary_actions.cutscene)
			{
			image_index=0
			primary_action=primary_actions.idle
			}
		
		//стояние на месте от прицеливания по диагонали
		if(primary_action==primary_actions.idle_diagonal_down
		|| primary_action==primary_actions.idle_diagonal_up)
			{
			hsp=0
			}
	    }
	//cycle animation for running  
	if(primary_action==primary_actions.run 
	&& image_index>=image_number-image_speed
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.cutscene)
	    {
	    image_index=0
	    }
	
	//стейты прыжка и падения завязанные на вертикальную скорость. не имеют смысла как раздельные поскольку анимация одинаковая ну да и черт с ней
	if((state==states.airborne)
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.teleport
	&& primary_action!=primary_actions.cutscene
	&& state!=states.ceiling)
	    {
	    if(vsp<0 
	    && primary_action!=primary_actions.jump
		&& primary_action!=primary_actions.teleport
		&& state!=states.ceiling
	    && no_jump==0)
	        {
	        image_index=0
	        primary_action=primary_actions.jump
	        }
	    //and if your vsp is not negative then you're falling
	    if(vsp>=0 
	    && primary_action!=primary_actions.fall
		&& primary_action!=primary_actions.teleport
		&& primary_action!=primary_actions.cutscene)
	        {
	        primary_action=primary_actions.fall
	        }
	    }
	
	//проверка запрыгивания с потолка на стену выше (вперед и вверх)
	if(jump_off_ceiling==true
	&& state==states.airborne
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& primary_action!=primary_actions.teleport)
		{
		hsp=ceiling_acceleration
		if(place_meeting(x+sign(ceiling_acceleration_stop), y, o_floor)
		&& place_meeting(x+sign(ceiling_acceleration_stop), y-32, o_floor)
		&& place_meeting(x+sign(ceiling_acceleration_stop), y-16, o_floor))
			{
			ceiling_obj=noone
			image_xscale=sign(hsp)
			state=states.wallcling
			jump_off_ceiling=false
			ceiling_acceleration=0
			ceiling_acceleration_stop=0
			if(!key_down && !key_up)
				{
				primary_action=primary_actions.wallcling
				}
			else
				{
				primary_action=primary_actions.wallmove
				}
			}
		
		if(place_meeting(x, y-1, o_floor))
			{
			state=states.ceiling
			jump_off_ceiling=false
			ceiling_acceleration=0
			ceiling_acceleration_stop=0
			if(move==0)
				{
				primary_action=primary_actions.ceiling
				}
			else
				{
				primary_action=primary_actions.ceiling_move
				}
			}
		//очень важно: это для запрыгивания с потолка на стену, чтоб персонаж прыгнул сначала вперед а потом назад, к стене
		if(ceiling_acceleration<ceiling_acceleration_stop)
			{
			ceiling_acceleration=ceiling_acceleration+0.2
			}
		if(ceiling_acceleration>ceiling_acceleration_stop)
			{
			ceiling_acceleration=ceiling_acceleration-0.2
			}
		if(ceiling_acceleration==ceiling_acceleration_stop)
			{
			jump_off_ceiling=false
			//hsp=0
			ceiling_acceleration=0
			ceiling_acceleration_stop=0
			}		
		}
	
	//проверяем на потолке мы держимся за блок или веревку
	if(state==states.ceiling
	&& place_meeting(x, y-1, o_floor)
	&& primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed)
		{
		ceiling_block=true
		ceiling_rope=false
		}

	//зацикливание анимации прыжка
	if((primary_action==primary_actions.jump || primary_action==primary_actions.fall)
	&& image_index>=image_number-image_speed)
	    {
	    image_index=0
	    }
    
	//лежание на земле бездыханным телом без движения
	if(primary_action==primary_actions.destroyed)
	    {
	    hsp=0
	    //vsp=0
	    move=0
	    }

	/*
	if(state==states.ceiling && ceiling_obj!=noone)
		{
		x=x+floor(ceiling_obj.hsp)
		y=y+floor(ceiling_obj.vsp)
		}
	*/
	
	/*
	if(state!=states.airborne
	&& state!=states.wallcling
	&& state!=states.dead)
		{
		last_state=state
		}
	*/
	
	//запоминаем последний безопасный блок на полу для воскрешения из ям
	if(state==states.grounded)
		{
		if(primary_action!=primary_actions.knockback
		&& primary_action!=primary_actions.destroyed
		&& !place_meeting(x, y, o_raising_acid))
			{
				
			if(instance_place(x+16, y+1, o_floor)
			&& instance_place(x-16, y+1, o_floor)
			&& !place_meeting(x+24, y, o_hazard)
			&& !place_meeting(x-24, y, o_hazard)
			&& instance_place(x, y+1, o_floor).destructible==false)
				{
				last_state=state
				safe_x=x
				safe_y=y
				safe_block=instance_place(x, y+1, o_floor)
				}
			if(ow_p==true && instance_place(x, y+1, o_one_way_floor)!=noone)
				{
				//&& instance_place(x+16, y+1, o_one_way_floor)
				//&& instance_place(x-16, y+1, o_one_way_floor)
				if(instance_place(x, y+1, o_one_way_floor).object_index!=o_one_way_floor_vanish
				&& instance_place(x, y+1, o_one_way_floor).object_index!=o_one_way_floor_moving_hor)
					{
					last_state=state
					safe_x=x
					safe_y=y
					safe_block=instance_place(x, y+1, o_one_way_floor)
					}
				}
			}
		}
	
	if(state==states.ceiling || state==states.wallcling)
		{
		if(place_meeting(x, y, o_raising_acid)
		|| place_meeting(x, y, o_hazard))
			{
			state=states.airborne
			}
		}
	

	
	/*
	if(state==states.grounded)
		{
		var platform=instance_place(x, y+1, o_floor)
			{
			if(instance_exists(platform))
				{
				if(platform.vsp!=0)
					{
					//show_message("debug purposes")
					y=y+platform.vsp
					}
				}
			}
		}
	*/
	
	//запоминаем последний безопасный потолочный блок
	if(state==states.ceiling 
	&& ceiling_obj!=noone
	&& ceiling_rope==true
	&& state!=states.dead
	&& !place_meeting(x+32, y, o_hazard)
	&& !place_meeting(x-32, y, o_hazard))
		{
		
		last_state=state
		safe_block=ceiling_obj
		safe_x=x
		safe_y=y
		}
		
	if(state==states.ceiling 
	&& ceiling_obj!=noone
	&& ceiling_block==true
	&& state!=states.dead)
		{
		if(ceiling_obj.destructible==false)
			{
			last_state=state
			safe_block=ceiling_obj
			safe_x=x
			safe_y=y
			}
		}
		
	
		
	/*
	if(state==states.wallcling 
	&& state!=states.dead)
		{
		last_xscale=image_xscale
		safe_x=x
		safe_y=y
		}
	*/
}
