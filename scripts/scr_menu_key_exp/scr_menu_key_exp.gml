// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_menu_key_exp(my_vpos){
	if(my_vpos==0)
		{
		switch(mpos)
			{
			case 0: 
			    {
			    o_controller.key[o_controller.up_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 1: 
			    {
			    o_controller.key[o_controller.down_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 2: 
			    {
			    o_controller.key[o_controller.left_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 3: 
			    {
			    o_controller.key[o_controller.right_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 4: 
			    {
			    o_controller.key[o_controller.attack_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 5: 
			    {
			    o_controller.key[o_controller.jump_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 6: 
			    {
			    o_controller.key[o_controller.lock_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 7: 
			    {
			    o_controller.key[o_controller.toggle_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }     
				case 8: 
			    {
			    o_controller.key[o_controller.gun_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			}
		}
	else if(my_vpos==1)
		{
		switch(mpos)
			{
			case 0: 
			    {
			    o_controller.t_key[o_controller.up_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 1: 
			    {
			    o_controller.t_key[o_controller.down_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 2: 
			    {
			    o_controller.t_key[o_controller.left_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 3: 
			    {
			    o_controller.t_key[o_controller.right_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 4: 
			    {
			    o_controller.t_key[o_controller.attack_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 5: 
			    {
			    o_controller.t_key[o_controller.jump_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 6: 
			    {
			    o_controller.t_key[o_controller.lock_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			case 7: 
			    {
			    o_controller.t_key[o_controller.toggle_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }     
				case 8: 
			    {
			    o_controller.t_key[o_controller.gun_b]=keyboard_key
			    key_waiting=-1
			    input_timer=1
			    break
			    }
			}
		}
}