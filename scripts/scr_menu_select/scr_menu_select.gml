function scr_menu_select() {

o_controller.my_next_room=menu_arr[mpos]

	if(o_controller.my_next_room!=room_main)
		{
		room_goto(room_transition)
		}
	else
		{
		room_goto(o_controller.my_next_room)
		}
}
