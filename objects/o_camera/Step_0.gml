/// @description Insert description here
// You can write your code in this editor

//player=o_controller.player
//player_count=o_controller.player_count

old_position=screen_left

screen_left=__view_get( e__VW.XView, view_current )
screen_right=__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )
screen_width=__view_get( e__VW.WView, view_current )
screen_top=__view_get( e__VW.YView, view_current )
screen_bottom=__view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )
screen_height=__view_get( e__VW.HView, view_current )

if(room!=room_gameover
&& room!=room_gamepad
&& room!=room_keyboard
&& room!=room_main
&& room!=room_select
&& room!=room_options
&& room!=room_winscreen
&& room!=room_gameover
&& room!=room_transition)
	{
	
	
	v_x=o_camera.screen_right-64
	v_y=o_camera.screen_top
	
	l_v_x=o_camera.screen_left+31
	
	for(i=0; i<9; i++)
		{
		if(collision_rectangle(v_x, v_y+(32*i), v_x+32, v_y+(32*i)+31, o_floor, false, false))
			{
			stop[i]=true
			}
		if(!collision_rectangle(v_x, v_y+(32*i), v_x+32, v_y+(32*i)+31, o_floor, false, false))
			{
			stop[i]=false
			}
		if(collision_rectangle(l_v_x, v_y+(32*i), l_v_x+32, v_y+(32*i)+31, o_floor, false, false))
			{
			stop_l[i]=true
			}
		if(!collision_rectangle(l_v_x, v_y+(32*i), l_v_x+32, v_y+(32*i)+31, o_floor, false, false))
			{
			stop_l[i]=false
			}
			
		
		}
	
	if(stop[0]==true
	&& stop[1]==true
	&& stop[2]==true
	&& stop[3]==true
	&& stop[4]==true
	&& stop[5]==true
	&& stop[6]==true
	&& stop[7]==true
	&& stop[8]==true)
		{
		//show_message("Остановить")
		move_left=true
		whole_stop=true
		}
	else
		{
		whole_stop=false
		}
		
	if(stop_l[0]==true
	&& stop_l[1]==true
	&& stop_l[2]==true
	&& stop_l[3]==true
	&& stop_l[4]==true
	&& stop_l[5]==true
	&& stop_l[6]==true
	&& stop_l[7]==true
	&& stop_l[8]==true)
		{
		move_right=true
		//show_message("Остановить")
		whole_stop_l=true
		}
	else
		{
		whole_stop_l=false
		}
	
	//scr_camera_check()
	
	if(o_controller.game_mode==0 || o_controller.game_mode==1)
		{
		if(instance_exists(o_controller.player1))
			{
			scr_init_controller_camera(o_controller.player1.x, o_controller.player1.y, o_controller.player1)
			}
			
		
		}
	else if(o_controller.game_mode==2 
	|| o_controller.game_mode==3
	|| o_controller.game_mode==4 
	|| o_controller.game_mode==5)
		{
		if(instance_exists(o_controller.player1)
		&& instance_exists(o_controller.player2))
			{
			scr_init_controller_camera(
			(o_controller.player1.x+o_controller.player2.x)/2, 
			(o_controller.player1.y+o_controller.player2.y)/2,
			o_controller.player1)
			}
			

		}
	}
	
if(old_position!=screen_left)
	{
	camera_moving=true
	}
else
	{
	camera_moving=false
	}
	
if(room==room_area_ending)
	{
	if(shake_counter>0)
		{
		shake_counter=shake_counter-1
		layer_set_visible(layer_get_id("effect_screen_shake"), true)
		}
	else
		{
		layer_set_visible(layer_get_id("effect_screen_shake"), false)
		}
	}
