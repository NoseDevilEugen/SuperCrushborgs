
if(pick_gamepad1==false)
	{
	gamepad_slot=-1
	}
	
if(pick_gamepad2==false)
	{
	gamepad_slot2=-1
	}

var move = 0
var move2 = 0

scr_get_stick_presses()

move = move-max(keyboard_check_pressed(o_controller.key[o_controller.left_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padl), stick_left_pressed[o_controller.gamepad_slot], 0)
move = move+max(keyboard_check_pressed(o_controller.key[o_controller.right_b]), gamepad_button_check_pressed(o_controller.gamepad_slot, gp_padr),stick_right_pressed[o_controller.gamepad_slot], 0)
//var mp_x, mp_y
move2 = move2-max(keyboard_check_pressed(o_controller.t_key[o_controller.left_b]), gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padl), stick_left_pressed[o_controller.gamepad_slot2], 0)
move2 = move2+max(keyboard_check_pressed(o_controller.t_key[o_controller.right_b]), gamepad_button_check_pressed(o_controller.gamepad_slot2, gp_padr),stick_right_pressed[o_controller.gamepad_slot2], 0)

if(i_i<=6)
	{
	i_i=i_i+0.2
	}
else
	{
	i_i=0
	}
	
	



if(move!=0 && taken1==false && pick_gamepad1==true)
    {
    mpos+=move
    if(mpos<0)
        {
        mpos=array_length(p1_char)-1
        }
    if(mpos>array_length(p1_char)-1)
        {
        mpos=0
        }
    }
  
if(o_controller.game_mode==1)
	{
	if(move2!=0 && taken2==false && pick_gamepad2==true)
	    {
	    mpos2+=move2
	    if(mpos2<0)
	        {
	        mpos2=array_length(p1_char)-1
	        }
	    if(mpos2>array_length(p1_char)-1)
	        {
	        mpos2=0
	        }
	    }	
	}
	
var push1
push1 = max(keyboard_check_released(vk_enter),  
gamepad_button_check_released(o_controller.gamepad_slot, gp_face1), 
gamepad_button_check_released(o_controller.gamepad_slot, gp_start), 
0)

var push2
push2 = max(keyboard_check_released(vk_numpad2), 
gamepad_button_check_released(o_controller.gamepad_slot2, gp_face1), 
gamepad_button_check_released(o_controller.gamepad_slot2, gp_start), 
0)

if(taken1==false)
	{
	taken_timer=60
	}

if(o_controller.game_mode==1 && (taken2==false || taken1==false))
	{
	taken_timer=60
	}

if(push1==1 && taken1==false && pick_gamepad1==true)
	{
	taken1=true
	}

if(o_controller.game_mode==1)
	{
	if(push2==1 && taken2==false && pick_gamepad2==true)
		{
		taken2=true
		}
		
	if(taken1==true && taken2==true)
		{
		taken_timer=taken_timer-1
		}
		
	}
else
	{
	if(taken1==true)
		{
		taken_timer=taken_timer-1
		}
	}


o_controller.player1_type=p1_char[mpos]

if(o_controller.game_mode==1)
	{
	o_controller.player2_type=p1_char[mpos2]
	}


if(taken_timer==0)
	{
	room_goto(room_select)
	}

if(o_controller.game_mode==0)
	{
	if(pick_gamepad1==false)
		{
		var gp_num = gamepad_get_device_count()
		for (var not_i = 0; not_i < gp_num; not_i++;)
			{
			if(gamepad_button_check_released(not_i, gp_start))
				{
				o_controller.gamepad_slot=not_i
				pick_gamepad1=true
				}
			}
		if(keyboard_check_released(vk_escape))
			{
			o_controller.gamepad_slot=10
			pick_gamepad1=true
			}
		}
	}
else 
	{
	if(pick_gamepad1==false)
		{
		var gp_num = gamepad_get_device_count()
		for (var not_i = 0; not_i < gp_num; not_i++;)
			{
			if(gamepad_button_check_released(not_i, gp_start))
				{
				o_controller.gamepad_slot=not_i
				pick_gamepad1=true
				}
			
			}
		if(keyboard_check_released(vk_escape))
			{
			o_controller.gamepad_slot=10
			pick_gamepad1=true
			}
		}
	else
		{
		if(pick_gamepad2==false)
			{
			var gp_num = gamepad_get_device_count()
			for (var not_i = 0; not_i < gp_num; not_i++;)
				{
				if(gamepad_button_check_released(not_i, gp_start))
					{
					if(not_i!=o_controller.gamepad_slot)
						{
						o_controller.gamepad_slot2=not_i
						pick_gamepad2=true
						}
					}
				}
			if(keyboard_check_released(vk_escape))
				{
				o_controller.gamepad_slot2=11
				pick_gamepad2=true
				}
			}
		}
	}	