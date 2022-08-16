// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_stick_presses()
	{
	for (var i=0; i<o_controller.gp_num; i++)
		{
	    // left pressed
	    if (!stick_left_held[i] && gamepad_axis_value(i,gp_axislh) <= -threshold)
			{
	        stick_left_held[i] = true
	        stick_left_pressed[i] = true
	        stick_left_released[i] = false
	        alarm[0] = 1
			}

	    // left released
	    else if (stick_left_held[i] && gamepad_axis_value(i,gp_axislh) > -threshold)
			{
	        stick_left_held[i] = false
	        stick_left_pressed[i] = false
	        stick_left_released[i] = true
	        alarm[0] = 1
			}


	    // right pressed
	    if (!stick_right_held[i] && gamepad_axis_value(i,gp_axislh) >= threshold)
			{
	        stick_right_held[i] = true
	        stick_right_pressed[i] = true
	        stick_right_released[i] = false
	        alarm[0] = 1
			}

	    // right released
	    else if (stick_right_held[i] && gamepad_axis_value(i,gp_axislh) < threshold)
			{
	        stick_right_held[i] = false
	        stick_right_pressed[i] = false
	        stick_right_released[i] = true
	        alarm[0] = 1
			}


	    // up pressed
	    if (!stick_up_held[i] && gamepad_axis_value(i,gp_axislv) >= threshold)
			{
	        stick_up_held[i] = true
	        stick_up_pressed[i] = true
	        stick_up_released[i] = false
	        alarm[0] = 1
			}

	    // up released
	    else if (stick_up_held[i] && gamepad_axis_value(i,gp_axislv) < threshold)
			{
	        stick_up_held[i] = false
	        stick_up_pressed[i] = false
	        stick_up_released[i] = true
	        alarm[0] = 1
			}


	    // down pressed
	    if (!stick_down_held[i] && gamepad_axis_value(i,gp_axislv) <= -threshold)
			{
	        stick_down_held[i] = true
	        stick_down_pressed[i] = true
	        stick_down_released[i] = false
	        alarm[0] = 1
			}

	    // down released
	    else if (stick_down_held[i] && gamepad_axis_value(i,gp_axislv) > -threshold)
			{
	        stick_down_held[i] = false
	        stick_down_pressed[i] = false
	        stick_down_released[i] = true
	        alarm[0] = 1
			}
		}
	}