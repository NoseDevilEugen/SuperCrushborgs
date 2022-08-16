menu[0]="Up"
menu[1]="Down"
menu[2]="Left"
menu[3]="Right"
menu[4]="Shoot"
menu[5]="Jump"
menu[6]="Lock"
menu[7]="Weapon switch"
menu[8]="Neo Action"
menu[9]="Restore default settings"
menu[10]="Back to pause menu"
space = 16
mpos = 0

submenu[0]="P1"
submenu[1]="P2"

vpos=0

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

key_waiting=-1
input_timer=1

count=0

mp_x=mouse_x
mp_y=mouse_y
mouse_moving=false

