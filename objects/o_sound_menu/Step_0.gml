var move = 0

scr_get_stick_presses()

move = move-max(keyboard_check_pressed(vk_up), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padu), stick_down_pressed[o_controller.gamepad_slot], 0)
move = move+max(keyboard_check_pressed(vk_down), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padd),stick_up_pressed[o_controller.gamepad_slot], 0)
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
        if(point_in_rectangle(mouse_x, mouse_y, x, (y-16)+(i*space), x+300, (y-16)+((i+1)*space)))
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
    scr_menu()
    }

