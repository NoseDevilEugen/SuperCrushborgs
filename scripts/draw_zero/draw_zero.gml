function draw_zero() {
	
	
	//lives info
	//draw_self()
	
	//draw_set_colour(c_black)
	//draw_text(x, y-30, string(last_state))
	/*
	draw_set_alpha(0.5);
	mp_grid_draw(global.grid);
	draw_set_alpha(1);
	*/
	/*
	if(bbox_bottom+8<o_camera.screen_top && bbox_bottom>0)
		{
		
		draw_circle_color(x-o_camera.screen_left, 10, 12, c_black, c_black, true)
		draw_sprite_ext(sprite_index, image_index, x-o_camera.screen_left, 10, (image_xscale/2), image_yscale/2, 0, c_white, 1)
		}
	
	if(bbox_top-8>o_camera.screen_bottom && bbox_top<room_height)
		{
		draw_circle_color(x-o_camera.screen_left, 260, 12, c_black, c_black, true)
		draw_sprite_ext(sprite_index, image_index, x-o_camera.screen_left, 260, (image_xscale/2), image_yscale/2, 0, c_white, 1)
		}
	*/
	
	//if(text_read!=noone)
	//	{
		//show_message(text_read.bubble_text)
		//draw_rectangle(text_read.x-(string_length(text_read.bubble_text)/2), text_read.bbox_top-12, text_read.x+(string_length(text_read.bubble_text)/2), text_read.bbox_top-9, false)
		//draw_rectangle(x-40, y-40, x+40, y+40, false)
		//draw_set_color(c_black)
		
	//	}
	
	//states text conversion

	//draw_text(x, y-20, string(place_meeting(x+sign(image_xscale), y+floor(vsp), o_floor)))
	/*
	draw_set_alpha(0.5)
	if(collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, o_one_way_floor, false, false)
	&& instance_place(x, y, o_one_way_floor)!=collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, o_one_way_floor, false, false))
		{
		draw_rectangle_color(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, c_red, c_red, c_red, c_red, false)
		}
	draw_set_alpha(1)
	*/
	
	
	if(o_controller.player.gamepad_active==true)
	    {
	    if(o_controller.gamepad_prompts=="XBOX")
	        {    
	        var attack=scr_gp_strings_xbox(o_controller.g_key[o_controller.attack_b])
	        var hook=scr_gp_strings_xbox(o_controller.g_key[o_controller.toggle_b])
	        var dash=scr_gp_strings_xbox(o_controller.g_key[o_controller.lock_b])
	        var jump=scr_gp_strings_xbox(o_controller.g_key[o_controller.jump_b])
	        //var gun_key=scr_gp_strings_xbox(o_controller.g_key[o_controller.gun_b])
	        var up="Up"
	        var down="Down"
	        var left="Left"
	        var right="Right"
	        var hint="Back"
	        var hint2="Start"
	        }
	    else
	        {
	        if(o_controller.gamepad_prompts=="PS")
	            {    
	            var attack=scr_gp_strings_ps(o_controller.g_key[o_controller.attack_b])
	            var hook=scr_gp_strings_ps(o_controller.g_key[o_controller.toggle_b])
	            var dash=scr_gp_strings_ps(o_controller.g_key[o_controller.lock_b])
	            var jump=scr_gp_strings_ps(o_controller.g_key[o_controller.jump_b])
	            //var gun_key=scr_gp_strings_ps(o_controller.g_key[o_controller.gun_b])
	            var up="Up"
	            var down="Down"
	            var left="Left"
	            var right="Right"
	            var hint="Select"
	            var hint2="Start"
	            }
	        else
	            {
	            var attack=scr_gp_strings_other(o_controller.g_key[o_controller.attack_b])
	            var hook=scr_gp_strings_other(o_controller.g_key[o_controller.toggle_b])
	            var dash=scr_gp_strings_other(o_controller.g_key[o_controller.lock_b])
	            var jump=scr_gp_strings_other(o_controller.g_key[o_controller.jump_b])
	            //var gun_key=scr_gp_strings_other(o_controller.g_key[o_controller.gun_b])
	            var up="Up"
	            var down="Down"
	            var left="Left"
	            var right="Right"
	            var hint="Select"
	            var hint2="Start"
	            }
	        }
	    }
	else
	    {
	    var attack = scr_keyboard_prompts(o_controller.key[o_controller.attack_b])
	    var hook=scr_keyboard_prompts(o_controller.key[o_controller.toggle_b])
	    var dash=scr_keyboard_prompts(o_controller.key[o_controller.lock_b])
	    var jump=scr_keyboard_prompts(o_controller.key[o_controller.jump_b])
	    //var gun_key=scr_keyboard_prompts(o_controller.key[o_controller.gun_b])
	    var up=scr_keyboard_prompts(o_controller.key[o_controller.up_b])
	    var down=scr_keyboard_prompts(o_controller.key[o_controller.down_b])
	    var left=scr_keyboard_prompts(o_controller.key[o_controller.left_b])
	    var right=scr_keyboard_prompts(o_controller.key[o_controller.right_b])
	    var hint="F2"
	    var hint2="F1"
	    }



if(id==o_controller.player1)
	{
	
	scr_draw_text_outlined(17, 5, c_black, c_white, string_repeat("0", 7-string_length(string(my_score))) + string(my_score))
	//show_message(string(id)+" "+string(o_controller.player1))
	switch(active_slot)
		{
		case 0:
		/*
		draw_rectangle_color(o_camera.screen_left+13, 24, o_camera.screen_left+36, 43,
		c_green, c_green, c_green, c_green, false)
		*/
		draw_sprite(s_bonus_m_highlight, 0, 10+sprite_get_width(weapon_icons[weapon_slot[0]])/2,24)
		break
		case 1:
		/*
		draw_rectangle_color(o_camera.screen_left+40, 24, o_camera.screen_left+63, 43,
		c_green, c_green, c_green, c_green, false)
		*/
		draw_sprite(s_bonus_m_highlight, 0, 40+sprite_get_width(weapon_icons[weapon_slot[0]])/2,24)
		break
		}
	
	//select_but=scr_gp_strings_all(o_controller.other_prompts, o_controller.g_key[o_controller.gun_b])
	
	if(o_controller.gamepad_prompts=="XBOX")
		{
		select_but=scr_gp_strings_all(o_controller.xbox_prompts, o_controller.g_key[o_controller.toggle_b])
		action_but=scr_gp_strings_all(o_controller.xbox_prompts, o_controller.g_key[o_controller.gun_b])
		//draw_text(x+space*12, y+(i*space), string_hash_to_newline(string(scr_gp_strings_xbox(o_controller.g_key[i])))) 
		}
	else
		{
		if(o_controller.gamepad_prompts=="PS")
			{
			select_but=scr_gp_strings_all(o_controller.ps_prompts, o_controller.g_key[o_controller.toggle_b])
			action_but=scr_gp_strings_all(o_controller.ps_prompts, o_controller.g_key[o_controller.gun_b])
			}
		else
			{
			select_but=scr_gp_strings_all(o_controller.other_prompts, o_controller.g_key[o_controller.toggle_b])
			action_but=scr_gp_strings_all(o_controller.other_prompts, o_controller.g_key[o_controller.gun_b])
			}
		}
	
	
	
	//draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+70, string_hash_to_newline("Name: " + string(object_get_name(o_controller.player.object_index))))

	draw_sprite(weapon_icons[weapon_slot[0]], 0, 10+sprite_get_width(weapon_icons[weapon_slot[0]])/2,24)

	draw_sprite(weapon_icons[weapon_slot[1]], 0, 40+sprite_get_width(weapon_icons[weapon_slot[0]])/2,24)

	if(o_controller.show_hints==1)
		{
		draw_sprite(select_but, 0, 25+sprite_get_width(weapon_icons[weapon_slot[0]])/2, 25)
		}


	for(i=0; i<my_lives; i++)
		{
		draw_sprite(s_life_medal, 0, (10+(10*(i+1))), 35)
		}
		
	if(id.object_index==o_player)
		{
		
		if(state==states.dead)
			{
			draw_text((10+(10)), 30, string("GAME OVER"))
			draw_text((10), 40, string(my_name))
			}
	
				
		draw_rectangle_colour((25), 52, 
		(55), 60, c_black, c_black, c_black, c_black, true)
	
		if(exp_charge<60
		|| primary_action==primary_actions.knockback
		|| primary_action==primary_actions.destroyed)
			{
			draw_rectangle_colour((25), 52, 
			(25)+(exp_charge/2), 60, c_red, c_red, c_red, c_red, false)
			}
		else
			{
			draw_rectangle_colour((25), 52, 
			(25)+(exp_charge/2), 60, c_green, c_green, c_green, c_green, false)
			}
		}

	if(id.object_index==o_player_alt)
		{
		if(state==states.dead)
			{
			draw_text(20, 30, string("GAME OVER"))
			draw_text((10), 40, string(my_name))
			}	
			
		draw_rectangle_colour((25), 52, 
		(55), 60, c_black, c_black, c_black, c_black, true)
	
		if(teleport_cooldown>0
		|| primary_action==primary_actions.knockback
		|| primary_action==primary_actions.destroyed
		|| primary_action==primary_actions.teleport
		|| primary_action==primary_actions.teleport_end)
			{
			draw_rectangle_colour((25), 52, 
			(25)+(abs((teleport_charge)-30)), 60, c_red, c_red, c_red, c_red, false)
			}
		else
			{
			draw_rectangle_colour((25), 52, 
			(25)+(abs((teleport_charge)-30)), 60, c_green, c_green, c_green, c_green, false)
			}
		}
	
	if(o_controller.show_hints==1)
		{
		draw_sprite(action_but, 0, 40, 68)
		}
		
	}
if(id==o_controller.player2)
	{
		
	if(o_controller.gamepad_prompts2=="XBOX")
		{
		select_but=scr_gp_strings_all(o_controller.xbox_prompts, o_controller.t_g_key[o_controller.toggle_b])
		action_but=scr_gp_strings_all(o_controller.xbox_prompts, o_controller.t_g_key[o_controller.gun_b])
		//draw_text(x+space*12, y+(i*space), string_hash_to_newline(string(scr_gp_strings_xbox(o_controller.g_key[i])))) 
		}
	else
		{
		if(o_controller.gamepad_prompts2=="PS")
			{
			select_but=scr_gp_strings_all(o_controller.ps_prompts, o_controller.t_g_key[o_controller.toggle_b])
			action_but=scr_gp_strings_all(o_controller.ps_prompts, o_controller.t_g_key[o_controller.gun_b])
			}
		else
			{
			select_but=scr_gp_strings_all(o_controller.other_prompts, o_controller.t_g_key[o_controller.toggle_b])
			action_but=scr_gp_strings_all(o_controller.other_prompts, o_controller.t_g_key[o_controller.gun_b])
			}
		}
		
	scr_draw_text_outlined(407, 5, c_black, c_white, string_repeat("0", 7-string_length(string(my_score))) + string(my_score))
	switch(active_slot)
		{
		case 0:
		draw_sprite(s_bonus_m_highlight, 0, 400+sprite_get_width(weapon_icons[weapon_slot[0]])/2,24)
		break
		case 1:
		draw_sprite(s_bonus_m_highlight, 0, 430+sprite_get_width(weapon_icons[weapon_slot[0]])/2,24)
		break
		}
	
	//draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+70, string_hash_to_newline("Name: " + string(object_get_name(o_controller.player.object_index))))

	draw_sprite(weapon_icons[weapon_slot[0]], 0, 400+sprite_get_width(weapon_icons[weapon_slot[0]])/2,24)

	draw_sprite(weapon_icons[weapon_slot[1]], 0, 430+sprite_get_width(weapon_icons[weapon_slot[0]])/2,24)
	
	if(o_controller.show_hints==1)
		{
		draw_sprite(select_but, 0, 415+sprite_get_width(weapon_icons[weapon_slot[0]])/2, 25)
		}
		
	for(i=0; i<my_lives; i++)
		{
		draw_sprite(s_life_medal, 0, 390+(10+(10*(i+1))), 35)
		}

	if(id.object_index==o_player)
		{
		if(state==states.dead)
			{
			draw_text((400+(10)), 30, string("GAME OVER"))
			draw_text((400), 40, string(my_name))
			}
		draw_rectangle_colour((415), 52
		, (445), 60, c_black, c_black, c_black, c_black, true)
	
		if(exp_charge<60
		|| primary_action==primary_actions.knockback
		|| primary_action==primary_actions.destroyed)
			{
			draw_rectangle_colour((415), 52
			, (415)+(exp_charge/2), 60, c_red, c_red, c_red, c_red, false)
			}
		else
			{
			draw_rectangle_colour((415), 52
			, (415)+(exp_charge/2), 60, c_green, c_green, c_green, c_green, false)
			}
		}

	if(id.object_index==o_player_alt)
		{
		if(state==states.dead)
			{
			draw_text((400+(10)), 30, string("GAME OVER"))
			draw_text((400), 40, string(my_name))
			}
		draw_rectangle_colour((415), 52
		, (445), 60, c_black, c_black, c_black, c_black, true)
	
		if(teleport_cooldown>0
		|| primary_action==primary_actions.knockback
		|| primary_action==primary_actions.destroyed
		|| primary_action==primary_actions.teleport
		|| primary_action==primary_actions.teleport_end)
			{
			draw_rectangle_colour((415), 52
			, (415)+(abs((teleport_charge)-30)), 60, c_red, c_red, c_red, c_red, false)
			}
		else
			{
			draw_rectangle_colour((415), 52
			, (415)+(abs((teleport_charge)-30)), 60, c_green, c_green, c_green, c_green, false)
			}
		}
		
	if(o_controller.show_hints==1)
		{
		draw_sprite(action_but, 0, 430, 68)
		}
	}
	
	//draw_sprite(o_controller.player.weapon_icons[o_controller.player.weapon_slot[o_controller.player.active_slot]], 0, __view_get( e__VW.XView, 0 )+60,__view_get( e__VW.YView, 0 )+40)

	//draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+230, string_hash_to_newline(string(o_controller.player.active_slot)))


	/*     
	if(key_down!=0)
	    {
	    draw_sprite_ext(s_arrow, 0, x, y+50, 1, 1, 180, c_white, 1)
	    }    
       
	if(key_up!=0)
	    {
	    draw_sprite_ext(s_arrow, 0, x, y-50, 1, 1, 0, c_white, 1)
	    } 
    
	if(key_left!=0)
	    {
	    draw_sprite_ext(s_arrow, 0, x-50, y, 1, 1, 90, c_white, 1)
	    } 
    
	if(key_right!=0)
	    {
	    draw_sprite_ext(s_arrow, 0, x+50, y, 1, 1, 270, c_white, 1)
	    }     
	*/    
  

	//hp rectangle
	/*  
	draw_rectangle_colour(o_controller.player.x-10, o_controller.player.bbox_top-15, (o_controller.player.x-10)+(o_controller.player.start_hp*2), o_controller.player.bbox_top-10, c_black, c_black, c_black, c_black, true)
	if(o_controller.player.hp>0)
	    {
	    draw_rectangle_colour(o_controller.player.x-10, o_controller.player.bbox_top-15, (o_controller.player.x-10)+(o_controller.player.hp*2), o_controller.player.bbox_top-10, c_green, c_green, c_green, c_green, false)
	    }    

	  */
  
	/* 
	draw_set_alpha(0.4)
	draw_set_colour(c_red);
	draw_rectangle(bbox_left-20, bbox_top, bbox_right+20, bbox_bottom+10, false)
	draw_set_alpha(1)    
	*/


	/*
	draw_set_alpha(0.4)
	draw_set_colour(c_red);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)
	draw_set_alpha(1)
	*/
	//draw_text(mouse_x, mouse_y, string(mouse_x)+ "  " + string(mouse_y))




}
