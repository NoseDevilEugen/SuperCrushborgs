
//массив для режимов экрана
screen_mode[0]="Windowed 1x"
screen_mode[1]="Windowed 2x"
screen_mode[2]="Windowed 3x"
screen_mode[3]="Fullscreen (correct)"
screen_mode[4]="Fullscreen (stretched)"

//текущий режим экрана (индекс массива)
scr_pos=o_controller.scr_pos

//состояния переменных VSYNC и AA
vsync_state=o_controller.vsync_state
AA_state=o_controller.AA_state

//ширина и высота монитора
MonitorW=display_get_width()
MonitorH=display_get_height()


//пункты меню паузы
menu[0]="Continue"
menu[1]="Configure gamepad"
menu[2]="Configure keyboard"
menu[3]="Music volume"
menu[4]="Sounds volume"
menu[5]="Screen mode: "+screen_mode[scr_pos]
menu[6]="Vsync: "
menu[7]="AA: "
menu[8]="Hints: "
menu[9]="Back to title"

//хинты вкл\выкл
hints[0]="Hide"
hints[1]="Show"

//состояние хинтов
hints_pos=o_controller.show_hints

//отступ
space = 16

//позиция курсора
mpos = 0


sure_menu=false
sure=false

not_sure=false
timer=2

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

scrn=noone
