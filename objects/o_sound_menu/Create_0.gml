menu[0]="Set volume"
menu[1]="Back to title"

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

space = 64
mpos = 0

mp_x=mouse_x
mp_y=mouse_y
mouse_moving=false

