space = 18
mpos = 0
mpos2 = 0

taken1=false
taken2=false

taken_timer=60

pick_gamepad1=false
pick_gamepad2=false

pick_gamepads=false

presses=false

p1_char_sprite[0]=s_panthebot_run
p1_char_sprite[1]=s_shinobot_run
p1_char_sprite[2]=s_panthebot_idle
p1_char_sprite[3]=s_shinobot_idle
i_i=0

p1_char[0]=o_player
p1_char[1]=o_player_alt


room_to_go=noone

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

