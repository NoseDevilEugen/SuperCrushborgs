function init_move() {
	//react inputs
	
	//нажатие лево это -1, нажатие право это 1.  move их сумма
	if(primary_action!=primary_actions.knockback
	&& primary_action!=primary_actions.destroyed
	&& !place_meeting(x, y, o_boss_gate))
		{
		move = key_left + key_right
		}
    
	//последнее нажатие
	if(move!=0)
		{
		last_move=move
		}
	
	//разворот персонажа для тестирования
	if(key_turn_released)
	    {
	    image_xscale=image_xscale*-1
	    }

	/*    
	if(key_AI_switch)
	    {    
	    pantheons_active=pantheons_active*-1
	    }
	*/
	//get mask offset
	
	//обновляем оффсеты
	bbox_top_offset=abs(y-bbox_top)
	bbox_bottom_offset=abs(y-bbox_bottom)
	bbox_left_offset=abs(x-bbox_left)
	bbox_right_offset=abs(x-bbox_right)



}
