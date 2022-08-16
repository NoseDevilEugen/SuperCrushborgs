screen_mode[0]="Windowed 1x"
screen_mode[1]="Windowed 2x"
screen_mode[2]="Windowed 3x"
screen_mode[3]="Fullscreen (correct)"
screen_mode[4]="Fullscreen (stretched)"

scr_pos=o_controller.scr_pos

surf_pause_menu=surface_create(480, 270)

vsync_state=o_controller.vsync_state
AA_state=o_controller.AA_state

MonitorW=display_get_width()

MonitorH=display_get_height()


menu[0]="Continue"
menu[1]="Configure gamepad"
menu[2]="Configure keyboard"
//menu[2]="Screen mode: "+screen_mode[scr_pos]
//menu[3]="Vsync: "
//menu[4]="AA: "
menu[3]="Music volume"
menu[4]="Sounds volume"
menu[5]="Back to title"

message_for_player[0]="Set gamepad control scheme"
message_for_player[1]="Set Keyboard control scheme"
message_for_player[2]="Left and Right to change winidow size"
message_for_player[3]="Push button to switch Vsync"
message_for_player[4]="Press left and right to change AA"
message_for_player[5]="Press A for start or stop music \n Left or right change volume"
message_for_player[6]="Press A for start or stop sound \n Left or right change volume"
message_for_player[7]="Go to title screen"


space = 18
mpos = 0

for (var i=0; i<o_controller.gp_num; i++)
{
    stick_left_pressed[i] = false
    stick_right_pressed[i] = false
    stick_up_pressed[i] = false
    stick_down_pressed[i] = false

    stick_left_held[i] = false
    stick_right_held[i] = false
    stick_up_held[i] = false
    stick_down_held[i] = false

    stick_left_released[i] = false
    stick_right_released[i] = false
    stick_up_released[i] = false
    stick_down_released[i] = false
}

threshold=0.5

menu_arr[0]=room_area_test
menu_arr[1]=room_area_bug_boss
menu_arr[2]=room_area_dual_spider_boss
menu_arr[3]=room_area_waterfall_boss
menu_arr[4]=room_area_joe_boss
menu_arr[5]=room_area_richter_boss
menu_arr[6]=room_area_helicopter_boss
menu_arr[7]=room_area_phantom_boss
menu_arr[8]=room_area_pendulum_boss
menu_arr[9]=room_area_wall_boss
menu_arr[10]=room_main


mp_x=mouse_x
mp_y=mouse_y
mouse_moving=false

