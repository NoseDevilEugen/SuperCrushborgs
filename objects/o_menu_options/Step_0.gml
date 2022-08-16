var move = 0
var hmove=0

if(o_controller.gp_num>0)
	{
	o_controller.gamepad_slot=0
	o_controller.gamepad_slot2=1
	}

scr_get_stick_presses()

move = move-max(keyboard_check_pressed(o_controller.key[o_controller.up_b]), keyboard_check_pressed(o_controller.t_key[o_controller.up_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padu), stick_down_pressed[o_controller.gamepad_slot], 0)
move = move+max(keyboard_check_pressed(o_controller.key[o_controller.down_b]), keyboard_check_pressed(o_controller.t_key[o_controller.down_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padd),stick_up_pressed[o_controller.gamepad_slot], 0)
//var mp_x, mp_y


if(mpos==2)
	{
	hmove = hmove-max(keyboard_check_pressed(o_controller.key[o_controller.left_b]), keyboard_check_pressed(o_controller.t_key[o_controller.left_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl), stick_left_pressed[o_controller.gamepad_slot], 0)
	hmove = hmove+max(keyboard_check_pressed(o_controller.key[o_controller.right_b]), keyboard_check_pressed(o_controller.t_key[o_controller.right_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr),stick_right_pressed[o_controller.gamepad_slot], 0)
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
			
			
			
			o_controller.Xoffset=0
			o_controller.Yoffset=0
			window_set_fullscreen(false)
			window_set_size(480*(scr_pos+1), 270*(scr_pos+1))
			surface_resize(application_surface, 480*(scr_pos+1), 270*(scr_pos+1))
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
				//resize main surface
				surface_resize(application_surface,960,540)
				//create offset to move surface to the center
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




menu[2]="Screen mode: "+screen_mode[scr_pos]
o_controller.scr_pos=scr_pos





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
        if(point_in_rectangle(mouse_x, mouse_y, 0, (y-(space/2))+(i*space), room_width, (y-(space/2))+((i+1)*space)))
            {
            mpos=i        //draw_text(5, y+(i*space), string(mpos))
            }
        }
    }

if(move!=0)
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
    
var push1
push1 = max(keyboard_check_released(vk_enter), 
mouse_check_button_released(mb_left), 
gamepad_button_check_released(o_controller.gamepad_slot, gp_face1), 
gamepad_button_check_released(o_controller.gamepad_slot, gp_start), 
0)


if(push1==1)
    {
    scr_menu_options()
    }
	
if(mpos==7)
		{
		hmove = hmove-max(keyboard_check_pressed(o_controller.key[o_controller.left_b]), keyboard_check_pressed(o_controller.t_key[o_controller.left_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl), stick_left_pressed[o_controller.gamepad_slot], 0)
		hmove = hmove+max(keyboard_check_pressed(o_controller.key[o_controller.right_b]), keyboard_check_pressed(o_controller.t_key[o_controller.right_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr),stick_right_pressed[o_controller.gamepad_slot], 0)
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
	
if(mpos==4)
	{
	hmove = hmove-max(keyboard_check_pressed(o_controller.key[o_controller.left_b]), keyboard_check_pressed(o_controller.t_key[o_controller.left_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl), stick_left_pressed[o_controller.gamepad_slot], 0)
	hmove = hmove+max(keyboard_check_pressed(o_controller.key[o_controller.right_b]), keyboard_check_pressed(o_controller.t_key[o_controller.right_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr),stick_right_pressed[o_controller.gamepad_slot], 0)
	if(hmove!=0)
		{
		AA_state+=(hmove*2)
		if(AA_state<0)
			{
			AA_state=8
			}
		if(AA_state>8)
			{
			AA_state=0
			}
		//AA_state=clamp(AA_state, 0, 8)
		display_reset(AA_state, vsync_state)
		}
	}


if(mpos==5)
	{
	hmove = hmove-max(keyboard_check_pressed(o_controller.key[o_controller.left_b]), keyboard_check_pressed(o_controller.t_key[o_controller.left_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl), stick_left_pressed[o_controller.gamepad_slot], 0)
	hmove = hmove+max(keyboard_check_pressed(o_controller.key[o_controller.right_b]), keyboard_check_pressed(o_controller.t_key[o_controller.right_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr),stick_right_pressed[o_controller.gamepad_slot], 0)
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

if(mpos==6)
	{
	hmove = hmove-max(keyboard_check_pressed(o_controller.key[o_controller.left_b]), keyboard_check_pressed(o_controller.t_key[o_controller.left_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl), stick_left_pressed[o_controller.gamepad_slot], 0)
	hmove = hmove+max(keyboard_check_pressed(o_controller.key[o_controller.right_b]), keyboard_check_pressed(o_controller.t_key[o_controller.right_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr),stick_right_pressed[o_controller.gamepad_slot], 0)
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


if(vsync_state==false)
	{
	menu[3]="Vsync: FALSE"
	}
else
	{
	menu[3]="Vsync: TRUE"
	}
	
menu[4]="AA: "+string(AA_state)
menu[7]="Hints: "+hints[hints_pos]

o_controller.vsync_state=vsync_state
o_controller.AA_state=AA_state

scr_save_binding()


