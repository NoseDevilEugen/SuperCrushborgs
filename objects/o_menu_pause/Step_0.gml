var move = 0
var hmove = 0
scr_get_stick_presses()

move = move-max(keyboard_check_pressed(vk_up), 
gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padu), stick_down_pressed[o_controller.gamepad_slot], 
gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padu), stick_down_pressed[o_controller.gamepad_slot2],
0)
move = move+max(keyboard_check_pressed(vk_down), 
gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padd),stick_up_pressed[o_controller.gamepad_slot], 
gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padd),stick_up_pressed[o_controller.gamepad_slot2],
0)
//var mp_x, mp_y

if(mouse_x!=mp_x || mouse_y!=mp_y)
    {
    mouse_moving=true
    }
    
if(mouse_x==mp_x && mouse_y==mp_y)
    {
    mouse_moving=false
    }

mp_x=mouse_x
mp_y=mouse_y    
    
for(i=0; i<array_length(menu); i=i+1)
    {
    if(mouse_moving==true)
        {
        if(point_in_rectangle(mouse_x, mouse_y, x, (y-16)+(i*space), x+300, (y-16)+((i+1)*space)) && sure_menu==false)
            {
            mpos=i        //draw_text(5, y+(i*space), string(mpos))
            }
        }
    }

if(move!=0 && sure_menu==false)
    {
    mpos+=move
    if(mpos<0)
        {
        mpos=array_length(menu)-1
        }
    if(mpos>array_length(menu)-1)
        {
        mpos=0
        }
    }
  
  
if(mpos==2 || mpos==3 || mpos==4 || mpos==5 || mpos==8)
	{
	hmove = hmove-max(keyboard_check_pressed(o_controller.key[o_controller.left_b]), keyboard_check_pressed(o_controller.t_key[o_controller.left_b]), 
	gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl), stick_left_pressed[o_controller.gamepad_slot], 
	gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padl), stick_left_pressed[o_controller.gamepad_slot2], 
	0)
	hmove = hmove+max(keyboard_check_pressed(o_controller.key[o_controller.right_b]), keyboard_check_pressed(o_controller.t_key[o_controller.right_b]), 
	gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr),stick_right_pressed[o_controller.gamepad_slot], 
	gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padr),stick_right_pressed[o_controller.gamepad_slot2], 
	0)
	
	if(mpos==8)
		{
		if(hmove!=0)
			{
			if(hints_pos==0)
				{
				hints_pos=1
				}
			else
				{
				hints_pos=0
				}
			}
		}
	
	if(mpos==3)
		{
		if(hmove!=0)
			{
			o_controller.volume_music+=(hmove*0.1)
			o_controller.volume_music=clamp(o_controller.volume_music, 0, 1)
			var i=0
			for(i=0; i<array_length(o_controller.music_array); i++)
				{
				audio_sound_gain(o_controller.music_array[i], o_controller.volume_music, 0)
				}
			}
		}
	if(mpos==4)
		{
		if(hmove!=0)
			{
			o_controller.volume_sound+=(hmove*0.1)
			o_controller.volume_sound=clamp(o_controller.volume_sound, 0, 1)
			var i=0
			for(i=0; i<array_length(o_controller.sound_array); i++)
				{
				audio_sound_gain(o_controller.sound_array[i], o_controller.volume_sound, 0)
				}
			}
		}
	if(mpos==5)
		{
		if(hmove!=0)
		    {
		    scr_pos+=hmove
		    if(scr_pos<0)
		        {
		        scr_pos=array_length(screen_mode)-1
		        }
		    if(scr_pos>array_length(screen_mode)-1)
		        {
		        scr_pos=0
		        }
			if(scr_pos==0 
			|| scr_pos==1
			|| scr_pos==2)
				{
				//show_message(sprite_get_width(o_pause.my_sprite))
				o_controller.Xoffset=0
				o_controller.Yoffset=0
				//buffer_get_surface(o_pause.my_buf, o_pause.scrn, 0)
				//surface_copy(scrn, 0, 0, o_pause.scrn)
				window_set_fullscreen(false)
				window_set_size(480*(scr_pos+1), 270*(scr_pos+1))
				surface_resize(application_surface, 480*(scr_pos+1), 270*(scr_pos+1))
				
				
				
				/*
				if(surface_exists(o_pause.scrn))
					{
					surface_resize(o_pause.scrn, 480*(scr_pos+1), 270*(scr_pos+1))
					}
				*/
				
				if(alarm[1]==-1)
					{
					alarm[1]=1
					}
				}
			if(scr_pos==3)
				{
				window_set_fullscreen(true)
				if(MonitorW>=960 && MonitorH>=540)
					{
					//window_set_fullscreen(true)
					surface_resize(application_surface,960,540)
				
					o_controller.Xoffset=(MonitorW-960)/2
					o_controller.Yoffset=(MonitorH-540)/2
				
					}
				if(MonitorW>=1440 && MonitorH>=810)
					{
					surface_resize(application_surface,1440,810)
					o_controller.Xoffset=(MonitorW-1440)/2
					o_controller.Yoffset=(MonitorH-810)/2
					}
				if(MonitorW>=1920 && MonitorH>=1080)
					{
					surface_resize(application_surface,1920,1080)
					o_controller.Xoffset=(MonitorW-1920)/2
					o_controller.Yoffset=(MonitorH-1080)/2
					}

				//surface_resize(application_surface, 480*scr_pos+1, 270*scr_pos+1)
				}
			if(scr_pos==4)
				{
				o_controller.Xoffset=0
				o_controller.Yoffset=0
				window_set_fullscreen(true)
				surface_resize(application_surface, display_get_width(), display_get_height())
				
				}
		    }
		}
	}
	

	
menu[5]="Screen mode: "+screen_mode[scr_pos]
menu[8]="Hints: "+hints[hints_pos]
o_controller.scr_pos=scr_pos	
o_controller.show_hints=hints_pos
	
var push1
push1 = max(keyboard_check_released(vk_enter), 
mouse_check_button_pressed(mb_left), 
gamepad_button_check_released(o_controller.gamepad_slot, gp_face1), 
gamepad_button_check_released(o_controller.gamepad_slot, gp_start), 
gamepad_button_check_released(o_controller.gamepad_slot2, gp_face1), 
gamepad_button_check_released(o_controller.gamepad_slot2, gp_start), 
0)




if(push1==1 && sure_menu==false)
    {
    scr_menu_pause()
    }
	


o_controller.vsync_state=vsync_state
o_controller.AA_state=AA_state

scr_save_binding()

if(not_sure==true)
	{
	if(timer>1)
		{
		timer=timer-1
		}
	else
		{
		timer=2
		not_sure=false
		}
	}


if(sure_menu==true)
	{

	hmove = hmove-max(keyboard_check_pressed(o_controller.key[o_controller.left_b]), keyboard_check_pressed(o_controller.t_key[o_controller.left_b]), 
	gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl), stick_left_pressed[o_controller.gamepad_slot], 
	gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padl), stick_left_pressed[o_controller.gamepad_slot2], 
	0)
	hmove = hmove+max(keyboard_check_pressed(o_controller.key[o_controller.right_b]), keyboard_check_pressed(o_controller.t_key[o_controller.right_b]), 
	gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr),stick_right_pressed[o_controller.gamepad_slot], 
	gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padr),stick_right_pressed[o_controller.gamepad_slot2],
	0)
	if(hmove!=0)
		{
		sure=!sure
		}
	
	if(sure==false)
		{
		if(not_sure==false)
			{
			if(push1==1)
				{
				sure_menu=false
				}
			}
		}
	
	if(sure==true)
		{
		if(push1==1)
			{
			//instance_destroy(id)
			//instance_activate_all()
			scr_game_restart_custom()
			}
		}
	}