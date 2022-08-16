var move = 0

var vmove=0

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


if(key_waiting==-1)
    {
    scr_get_stick_presses()
	
	move = move-max(keyboard_check_pressed(o_controller.key[o_controller.up_b]), keyboard_check_pressed(o_controller.t_key[o_controller.up_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padu), stick_down_pressed[o_controller.gamepad_slot], 0)
	move = move+max(keyboard_check_pressed(o_controller.key[o_controller.down_b]), keyboard_check_pressed(o_controller.t_key[o_controller.down_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padd),stick_up_pressed[o_controller.gamepad_slot], 0)

    
	vmove = vmove-max(keyboard_check_pressed(vk_left), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl), stick_left_pressed[o_controller.gamepad_slot], 0)
	vmove = vmove+max(keyboard_check_pressed(vk_right), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr),stick_right_pressed[o_controller.gamepad_slot], 0)
	
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

if(vmove!=0)
    {
    vpos+=vmove
    if(vpos<0)
        {
        vpos=array_length(submenu)-1
        }
    if(vpos>array_length(submenu)-1)
        {
        vpos=0
        }
    }

    
        
var push1
push1 = max(keyboard_check_pressed(vk_enter), 
mouse_check_button_pressed(mb_left), 
gamepad_button_check_pressed(o_controller.gamepad_slot, gp_face1), 
gamepad_button_check_pressed(o_controller.gamepad_slot, gp_start), 
0)

if(push1==1)
    {
    scr_menu_configure_key_pause()
    }
    
if(key_waiting!=-1 && input_timer>0)
    {
    input_timer=input_timer-1
    }    
    
if(key_waiting!=-1 && input_timer<=0)
    {
    if(keyboard_key!=0 && keyboard_key!=vk_enter)
        {
	    scr_menu_key_exp(vpos)
        scr_save_binding()
        }
    }

