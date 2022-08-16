/// @description Insert description here
// You can write your code in this editor

//player=o_controller.player

autoscroll_x=false
autoscroll_y=false

autoscroll_dir_x=0
autoscroll_dir_y=0

prev_cam=0

autoscroll_speed=1
autoscroll_speed_y=1

screen_left=__view_get( e__VW.XView, view_current )
screen_right=__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )
screen_width=__view_get( e__VW.WView, view_current )
screen_top=__view_get( e__VW.YView, view_current )
screen_bottom=__view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )
screen_height=__view_get( e__VW.HView, view_current )

counter=0

previous_left=__view_get( e__VW.XView, view_current )
previous_top=__view_get( e__VW.YView, view_current )

camera_border_left=0
camera_border_top=0
camera_border_right=room_width
camera_border_bottom=room_height

camera_moving=false
old_position=0

shake_counter=0

breakpoint="none"

var i
for(i=0; i<360; i++)
	{
	dcos_array[i]=dcos(i)
	dsin_array[i]=dsin(i)
	}
	
vsp=0

camera_x=0

player1=noone
player2=noone

scroll_x=true
scroll_y=true

scroll_up=false
scroll_down=false
scroll_left=false
scroll_right=false


l_v_x=0
v_x=0
v_y=0

stop[0]=false
stop[1]=false
stop[2]=false
stop[3]=false
stop[4]=false
stop[5]=false
stop[6]=false
stop[7]=false
stop[8]=false
//stop[9]=false

move_left=false
whole_stop=false

stop_l[0]=false
stop_l[1]=false
stop_l[2]=false
stop_l[3]=false
stop_l[4]=false
stop_l[5]=false
stop_l[6]=false
stop_l[7]=false
stop_l[8]=false
//stop_l[9]=false

whole_stop_l=false
move_right=false