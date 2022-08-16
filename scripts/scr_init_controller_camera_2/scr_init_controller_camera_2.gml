// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_controller_camera2(my_x, my_y, my_player){
	
	my_x=floor(my_x)
	my_y=floor(my_y)
	
	if(o_controller.player2==noone)
		{
		if(o_controller.player1.boss_gate!=noone)
			{				
			scroll_x=false
			scroll_y=false
			if(__view_get(e__VW.XView, view_current)<o_boss_coordinates.x && scroll_left==false)	
				{
				scroll_right=true
				}
			if(__view_get(e__VW.XView, view_current)>o_boss_coordinates.x && scroll_right==false)	
				{
				scroll_left=true
				}
			if(__view_get(e__VW.YView, view_current)<o_boss_coordinates.y && scroll_up==false)	
				{
				scroll_down=true
				}
			if(__view_get(e__VW.YView, view_current)>o_boss_coordinates.y && scroll_down==false)	
				{
				scroll_up=true
				}
			}
		}
	else
		{
		if(o_controller.player1.boss_gate!=noone)
			{
			o_controller.player2.x=o_controller.player1.x
			o_controller.player2.y=o_controller.player1.y
			
			scroll_x=false
			scroll_y=false
			if(__view_get(e__VW.XView, view_current)<o_boss_coordinates.x && scroll_left==false)	
				{
				scroll_right=true
				}
			if(__view_get(e__VW.XView, view_current)>o_boss_coordinates.x && scroll_right==false)	
				{
				scroll_left=true
				}
			if(__view_get(e__VW.YView, view_current)<o_boss_coordinates.y && scroll_up==false)	
				{
				scroll_down=true
				}
			if(__view_get(e__VW.YView, view_current)>o_boss_coordinates.y && scroll_down==false)	
				{
				scroll_up=true
				}
			}
		if(o_controller.player2.boss_gate!=noone)
			{
			o_controller.player1.x=o_controller.player2.x
			o_controller.player1.y=o_controller.player2.y
			
			scroll_x=false
			scroll_y=false
			if(__view_get(e__VW.XView, view_current)<o_boss_coordinates.x && scroll_left==false)	
				{
				scroll_right=true
				}
			if(__view_get(e__VW.XView, view_current)>o_boss_coordinates.x && scroll_right==false)	
				{
				scroll_left=true
				}
			if(__view_get(e__VW.YView, view_current)<o_boss_coordinates.y && scroll_up==false)	
				{
				scroll_down=true
				}
			if(__view_get(e__VW.YView, view_current)>o_boss_coordinates.y && scroll_down==false)	
				{
				scroll_up=true
				}
			}
		}
	
	
	
	if((my_x>o_camera.screen_width/2) 
	&& (my_x<room_width-o_camera.screen_width/2))
	    {
		if(scroll_x==true)
			{
			if(scroll_left==false && scroll_right==false)
				{
				if(whole_stop==true)
					{
					if(my_x<(o_camera.screen_left+(o_camera.screen_width/2)))
						{
						if(my_x - floor(o_camera.screen_width/2)-o_camera.screen_left>12)
							{
							__view_set( e__VW.XView, view_current,  o_camera.screen_left+3)
							}
						else if(my_x - floor(o_camera.screen_width/2)-o_camera.screen_left<-12)
							{
							__view_set( e__VW.XView, view_current,  o_camera.screen_left-3)
							}
						else
							{
							__view_set( e__VW.XView, view_current, my_x - floor(o_camera.screen_width/2) )
							}
						}
					}
				else
					{
					if(move_left==true)
						{
						if(my_x - floor(o_camera.screen_width/2)-o_camera.screen_left>12)
							{
							__view_set( e__VW.XView, view_current,  o_camera.screen_left+3)
							}
						else
							{
							move_left=false
							}
						}
					}
					
				if(whole_stop_l==true)
					{
					if(my_x>(o_camera.screen_left+(o_camera.screen_width/2)))
						{
					    if(my_x - floor(o_camera.screen_width/2)-o_camera.screen_left>12)
							{
							__view_set( e__VW.XView, view_current,  o_camera.screen_left+3)
							}
						else if(my_x - floor(o_camera.screen_width/2)-o_camera.screen_left<-12)
							{
							__view_set( e__VW.XView, view_current,  o_camera.screen_left-3)
							}
						else
							{
							__view_set( e__VW.XView, view_current, my_x - floor(o_camera.screen_width/2) )
							}
						}
					}
				else
					{
					if(move_right==true)
						{
						if(my_x - floor(o_camera.screen_width/2)-o_camera.screen_left<-12)
							{
							__view_set( e__VW.XView, view_current,  o_camera.screen_left-3)
							}
						else
							{
							move_right=false
							}
						}
					}
				if(move_left==false && move_right==false)
					{
					if(my_x - floor(o_camera.screen_width/2)-o_camera.screen_left>5)
						{
						if(my_x - floor(o_camera.screen_width/2)-o_camera.screen_left>10)
							{
							__view_set( e__VW.XView, view_current,  o_camera.screen_left+6)
							}
						else
							{
							__view_set( e__VW.XView, view_current,  o_camera.screen_left+3)
							}
						}
					else if(my_x - floor(o_camera.screen_width/2)-o_camera.screen_left<-5)
						{
						if(my_x - floor(o_camera.screen_width/2)-o_camera.screen_left<-10)
							{
							__view_set( e__VW.XView, view_current,  o_camera.screen_left-6)
							}
						else
							{
							__view_set( e__VW.XView, view_current,  o_camera.screen_left-3)
							}
						}
					else
						{
						__view_set( e__VW.XView, view_current, my_x - floor(o_camera.screen_width/2) )
						}
					}
					
				}
			}
		else
			{
			if(scroll_left==true)
				{
				if(__view_get(e__VW.XView, view_current)>o_boss_coordinates.x)
					{
					__view_set( e__VW.XView, view_current, __view_get(e__VW.XView, view_current)-(5))
					}
				else
					{
					__view_set( e__VW.XView, view_current, o_boss_coordinates.x)
					scroll_right=false
					scroll_left=false
					}
				}
				
			if(scroll_right==true)
				{
				if(__view_get(e__VW.XView, view_current)<o_boss_coordinates.x)
					{
					__view_set( e__VW.XView, view_current, __view_get(e__VW.XView, view_current)+(5))
					}
				else
					{
					__view_set( e__VW.XView, view_current, o_boss_coordinates.x)
					scroll_right=false
					scroll_left=false
					}
				}
			}
	    }
	else
	    {
		if(scroll_x==true)
			{
		    if(o_camera.screen_left<=0)
		        {
		        __view_set( e__VW.XView, view_current, 0 )
		        }
		    if(o_camera.screen_left>=room_width-(o_camera.screen_width))
		        {
		        __view_set( e__VW.XView, view_current, room_width-o_camera.screen_width )
		        }
			}
			/*
		if(scroll_x==true)
			{
		    if(my_x<=o_camera.screen_width/2)
		        {
		        __view_set( e__VW.XView, view_current, 0 )
		        }
		    if(my_x>=room_width-(o_camera.screen_width/2))
		        {
		        __view_set( e__VW.XView, view_current, room_width-o_camera.screen_width )
		        }
			}
		*/
	    }


	//camera Y-axis    
	if((my_y>o_camera.screen_height/2) 
	&& (my_y<(room_height-o_camera.screen_height/2)))
	    {
		if(scroll_y==true)
			{
			if(scroll_down==false && scroll_up==false)
				{
				if(my_y - floor(o_camera.screen_height/2)-o_camera.screen_top>10)
					{
					__view_set( e__VW.YView, view_current,  o_camera.screen_top+10)
					}
				else if(my_y - floor(o_camera.screen_height/2)-o_camera.screen_top<-10)
					{
					__view_set( e__VW.YView, view_current,  o_camera.screen_top-10)
					}
				else
					{
					__view_set( e__VW.YView, view_current, my_y - floor(o_camera.screen_height/2) )
					}
					
					
			    //__view_set( e__VW.YView, view_current, my_y - floor(o_camera.screen_height/2) )
				}
			}
		else
			{
			if(scroll_up==true)
				{
				if(__view_get(e__VW.YView, view_current)>o_boss_coordinates.y)
					{
					__view_set( e__VW.YView, view_current, __view_get(e__VW.YView, view_current)-(5))
					}
				else
					{
					__view_set( e__VW.YView, view_current, o_boss_coordinates.y)
					scroll_up=false
					scroll_down=false
					}
				}
				
			if(scroll_down==true)
				{
				if(__view_get(e__VW.YView, view_current)<o_boss_coordinates.y)
					{
					__view_set( e__VW.YView, view_current, __view_get(e__VW.YView, view_current)+(5))
					}
				else
					{
					__view_set( e__VW.YView, view_current, o_boss_coordinates.y)
					scroll_up=false
					scroll_down=false
					}
				}
			}
	    }
	else
	    {
		if(scroll_y==true)
			{
		    if(my_y<=o_camera.screen_height/2)
		        {
		        __view_set( e__VW.YView, view_current, 0 )
		        }
		    if(my_y>=room_height-(o_camera.screen_height/2))
		        {
		        __view_set( e__VW.YView, view_current, room_height-o_camera.screen_height )
		        }
			}
	    }
camera_x=o_camera.screen_left
}