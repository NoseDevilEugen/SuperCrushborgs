//главное меню игры
menu[0]="Start 1P"
menu[1]="Start 2P"
menu[2]="Options"
menu[3]="Exit"



//индекс подменю1 и подменю2
vpos1=0
vpos2=0


analog_tilt=false

// init state variables
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

//отступ
space = 16

//стартовое положение курсора
mpos = 0

//координаты мыши
mp_x=mouse_x
mp_y=mouse_y
mouse_moving=false

