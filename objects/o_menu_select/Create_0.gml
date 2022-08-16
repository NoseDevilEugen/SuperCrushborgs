menu[0]="Level 1"
menu[1]="Level 2"
menu[2]="Level 3"
menu[3]="Level 4"
menu[4]="Level 5"
menu[5]="Ending screen"
menu[6]="Bug"
menu[7]="Joe"
menu[8]="Helicopter"
menu[9]="Phantom"
menu[10]="Wall"
menu[11]="Mainframe"
menu[12]="Back to title"

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
menu_arr[1]=room_area_test2
menu_arr[2]=room_area_test3
menu_arr[3]=room_area_test4
menu_arr[4]=room_area_test5
menu_arr[5]=room_area_ending
menu_arr[6]=room_area_bug_boss
menu_arr[7]=room_area_joe_boss
menu_arr[8]=room_area_helicopter_boss
menu_arr[9]=room_area_phantom_boss
menu_arr[10]=room_area_wall_boss
menu_arr[11]=room_area_mainframe_boss

menu_arr[12]=room_main


mp_x=mouse_x
mp_y=mouse_y
mouse_moving=false

