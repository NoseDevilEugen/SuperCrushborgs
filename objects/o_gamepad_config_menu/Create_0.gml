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
menu[10]="Back to the title"
space = 16
mpos = 4
mpos2 = 4

goback1=false
goback2=false

taken1=false
taken2=false

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
key_waiting2=-1
input_timer=10

count=0

if(gamepad_is_connected(o_controller.gamepad_slot))
    {
    if(o_controller.descr=="No gamepad" || o_controller.descr=="Unknown gamepad")
        {
        key_icon[32781]="Up"
        key_icon[32782]="Down"
        key_icon[32783]="Left"
        key_icon[32784]="Right"
        key_icon[32769]="not-A"
        key_icon[32770]="not-B"
        key_icon[32771]="not-X"
        key_icon[32772]="not-Y"
        key_icon[32774]="not-RB"
        key_icon[32773]="not-LB"
        key_icon[32776]="not-RT"
        key_icon[32775]="not-LT"
        key_icon[32777]="not-Select"
        key_icon[32778]="not-Start"
        }
    else if(o_controller.descr=="Xbox 360 Controller (XInput STANDARD GAMEPAD)")
        {
        key_icon[32781]="Up"
        key_icon[32782]="Down"
        key_icon[32783]="Left"
        key_icon[32784]="Right"
        key_icon[32769]="A"
        key_icon[32770]="B"
        key_icon[32771]="X"
        key_icon[32772]="Y"
        key_icon[32774]="RB"
        key_icon[32773]="LB"
        key_icon[32776]="RT"
        key_icon[32775]="LT"
        key_icon[32777]="Select"
        key_icon[32778]="Start"
        }
    else if(o_controller.descr=="PLAYSTATION(R)3 Controller")
        {
        key_icon[32781]="Up"
        key_icon[32782]="Down"
        key_icon[32783]="Left"
        key_icon[32784]="Right"
        key_icon[32769]="Cross"
        key_icon[32770]="Circle"
        key_icon[32771]="Square"
        key_icon[32772]="Triangle"
        key_icon[32774]="R1"
        key_icon[32773]="L1"
        key_icon[32776]="R2"
        key_icon[32775]="L2"
        key_icon[32777]="Select"
        key_icon[32778]="Start"
        }     
    }
	
if(gamepad_is_connected(o_controller.gamepad_slot2))
    {
    if(o_controller.descr2=="No gamepad" || o_controller.descr2=="Unknown gamepad")
        {
        key_icon[32781]="Up"
        key_icon[32782]="Down"
        key_icon[32783]="Left"
        key_icon[32784]="Right"
        key_icon[32769]="not-A"
        key_icon[32770]="not-B"
        key_icon[32771]="not-X"
        key_icon[32772]="not-Y"
        key_icon[32774]="not-RB"
        key_icon[32773]="not-LB"
        key_icon[32776]="not-RT"
        key_icon[32775]="not-LT"
        key_icon[32777]="not-Select"
        key_icon[32778]="not-Start"
        }
    else if(o_controller.descr2=="Xbox 360 Controller (XInput STANDARD GAMEPAD)")
        {
        key_icon[32781]="Up"
        key_icon[32782]="Down"
        key_icon[32783]="Left"
        key_icon[32784]="Right"
        key_icon[32769]="A"
        key_icon[32770]="B"
        key_icon[32771]="X"
        key_icon[32772]="Y"
        key_icon[32774]="RB"
        key_icon[32773]="LB"
        key_icon[32776]="RT"
        key_icon[32775]="LT"
        key_icon[32777]="Select"
        key_icon[32778]="Start"
        }
    else if(o_controller.descr2=="PLAYSTATION(R)3 Controller")
        {
        key_icon[32781]="Up"
        key_icon[32782]="Down"
        key_icon[32783]="Left"
        key_icon[32784]="Right"
        key_icon[32769]="Cross"
        key_icon[32770]="Circle"
        key_icon[32771]="Square"
        key_icon[32772]="Triangle"
        key_icon[32774]="R1"
        key_icon[32773]="L1"
        key_icon[32776]="R2"
        key_icon[32775]="L2"
        key_icon[32777]="Select"
        key_icon[32778]="Start"
        }     
    }
    
mp_x=mouse_x
mp_y=mouse_y
mouse_moving=false

