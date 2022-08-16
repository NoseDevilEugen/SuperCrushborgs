/// @description Insert description here
// You can write your code in this editor

//draw_text(o_camera.screen_left+50, o_camera.screen_top+120, string(safe_block))
//draw_text(x, o_controller.player1.y-40, string(y))
//draw_text(x, o_controller.player1.y-40, string(y))
//draw_text(x, o_controller.player1.y-60, string(yprevious))

//draw_line(bbox_left, bbox_bottom, bbox_right, bbox_bottom)


if((invul_time<=0
|| invul_time%2==0)
&& state!=states.dead)
	{
	shader_set(shd_hue)
	shader_set_uniform_f(u_position, pos)
	if(state!=states.ceiling)
		{
		//draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_green, c_green, c_green, c_green, true)
		//draw_rectangle_color(bbox_left+hsp, bbox_top+28+15, bbox_right+hsp, bbox_bottom+15, c_red, c_red, c_red, c_red, true)
		draw_self()
		}
	else
		{
		draw_sprite_ext(s_array[primary_action], image_index, x, y+8, image_xscale, image_yscale, 0, c_white, 1)
		}
		
	shader_reset()
	//draw_self()
	}

//draw_line(bbox_left, y+23, bbox_right, y+23)

//var text_read=instance_place(x, y, o_debris_text)

if(id==o_controller.player1)
	{
	//draw_text(x, bbox_bottom+5, string(vsp))

	if(primary_action==primary_actions.cutscene)
		{
		scr_draw_text_outlined(x-10, bbox_top-26, c_black, c_white, "press")
		scr_draw_text_outlined(x, bbox_top-16, c_black, c_white, "or "+string(scr_keyboard_prompts(o_controller.key[o_controller.gun_b])))
		if(o_controller.gamepad_prompts=="XBOX")
			{
			draw_sprite(scr_gp_strings_all(o_controller.xbox_prompts, o_controller.g_key[o_controller.gun_b]), 0, x-10, bbox_top-12)
			//draw_text(x+space*12, y+(i*space), string_hash_to_newline(string(scr_gp_strings_xbox(o_controller.g_key[i])))) 
			}
		else
			{
			if(o_controller.gamepad_prompts=="PS")
			    {
			    draw_sprite(scr_gp_strings_all(o_controller.ps_prompts, o_controller.g_key[o_controller.gun_b]), 0, x-10, bbox_top-12)
			    }
			else
			    {
			    draw_sprite(scr_gp_strings_all(o_controller.other_prompts, o_controller.g_key[o_controller.gun_b]), 0, x-10, bbox_top-12)
			    }
			}
		}
	}

else if(id==o_controller.player2)
	{
	
	if(primary_action==primary_actions.cutscene)
		{
		scr_draw_text_outlined(x-10, bbox_top-26, c_black, c_white, "press")
		scr_draw_text_outlined(x, bbox_top-16, c_black, c_white, "or "+string(scr_keyboard_prompts(o_controller.t_key[o_controller.gun_b])))
		if(o_controller.gamepad_prompts2=="XBOX")
			{
			draw_sprite(scr_gp_strings_all(o_controller.xbox_prompts, o_controller.t_g_key[o_controller.gun_b]), 0, x-10, bbox_top-12)
			//draw_text(x+space*12, y+(i*space), string_hash_to_newline(string(scr_gp_strings_xbox(o_controller.g_key[i])))) 
			}
		else
			{
			if(o_controller.gamepad_prompts2=="PS")
			    {
			    draw_sprite(scr_gp_strings_all(o_controller.ps_prompts, o_controller.t_g_key[o_controller.gun_b]), 0, x-10, bbox_top-12)
			    }
			else
			    {
			    draw_sprite(scr_gp_strings_all(o_controller.other_prompts, o_controller.t_g_key[o_controller.gun_b]), 0, x-10, bbox_top-12)
			    }
			}
		}
	}
	

draw_set_color(c_black)


//draw_text(x, bbox_bottom+10, string(image_index))
//draw_text(x, bbox_bottom+10, string(vsp))
//draw_zero()
//draw_text(x, bbox_bottom+10, string(state_word[state]))
//draw_rectangle(bbox_left, y-sprite_get_bbox_top(s_array[primary_actions.idle]), bbox_right, bbox_bottom, true)

