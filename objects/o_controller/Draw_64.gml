/// @description Insert description here
// You can write your code in this editor

//draw_text(10, 200, "instances: "+string(instance_number(o_special_fx))) 

//draw_text(60, 130, instance_number(all)) 

if(instance_exists(player1))
	{
	if(collision_rectangle(player1.bbox_left, player1.bbox_top, player1.bbox_right, player1.bbox_bottom, o_debris_text, false, false) && text_message==false)
		{
		text_message=true
		text_read=collision_rectangle(player1.bbox_left, player1.bbox_top, player1.bbox_right, player1.bbox_bottom, o_debris_text, false, false).bubble_text
		text_x=480
		text_y=260
		}

	if(instance_exists(player2))
		{
		if(collision_rectangle(player2.bbox_left, player2.bbox_top, player2.bbox_right, player2.bbox_bottom, o_debris_text, false, false) && text_message==false)
			{
			text_message=true
			text_read=collision_rectangle(player2.bbox_left, player2.bbox_top, player2.bbox_right, player2.bbox_bottom, o_debris_text, false, false).bubble_text
			text_x=480
			text_y=260
			}
		}
	
	if(text_message==true)
		{
		//text_counter=text_counter+1
		text_x=text_x-2
		draw_rectangle_colour(0, 250, 
		480, 280, c_black, c_black, c_black, c_black, false)
		
		draw_text_color(text_x, text_y, text_read, c_green, c_green, c_green, c_green, 1)
	
		if(text_x<=0-string_width(text_read))
			{
			text_x=0
			//show_message(text_counter)
			text_counter=0
			text_message=false
			}
		}
	}