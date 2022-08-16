/// @description Insert description here
// You can write your code in this editor
//объект для паузирования. затеняет все, что на экране на слоях player 
// и blocks




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

/*
screen_left=0
screen_top=0
screen_right=480 
screen_bottom=270
*/

depth=-10

surface01_buffer = buffer_create((__view_get( e__VW.WView, view_current ) * __view_get( e__VW.HView, view_current ))*4,buffer_grow,1);

pause_surf=surface_create(__view_get( e__VW.WView, view_current ), __view_get( e__VW.HView, view_current ))

//buffer_get_surface(surface01_buffer,pause_surf,buffer_surface_copy,0,0);

screen_state=window_get_fullscreen()
screen_change=false

paused=false

overlay=false

gamepad_slot=0


over_surf=surface_create(__view_get( e__VW.WView, view_current ), __view_get( e__VW.HView, view_current ))