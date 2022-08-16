// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_controller_camera(my_x, my_y, my_player){
	
	my_x=floor(my_x)
	my_y=floor(my_y)
	
	var view_ang=instance_nearest(my_x, my_y, o_boss_coordinates)
	
	prev_cam=screen_left
	
	if(autoscroll_y==true)
		{
		
		//camera_border_left=screen_left
		if(room!=room_area_test)
			{
			screen_top=screen_top+(autoscroll_speed_y*autoscroll_dir_y)
			}
		else
			{
			screen_top=screen_top+(1*autoscroll_dir_y)
			}
		__view_set( e__VW.YView, view_current,  screen_top)
		if(autoscroll_speed_y==1)
			{
			autoscroll_speed_y=2
			}
		else
			{
			autoscroll_speed_y=1
			}
		if(autoscroll_dir_y>0)
			{
			if(screen_bottom+2>=camera_border_bottom)
				{
				camera_border_top=camera_border_bottom-270
				screen_top=camera_border_bottom-270
				autoscroll_y=false
				//scroll_x=false
				//scroll_y=false
				}
			}
		if(autoscroll_dir_y<0)
			{
			if(screen_top-2<=camera_border_top)
				{
				screen_top=camera_border_top
				camera_border_bottom=camera_border_top+270
				autoscroll_y=false
				//scroll_x=false
				//scroll_y=false
				}
			}
		/*	
		if(screen_top+270>=1062)
			{
			screen_top=792
			autoscroll_y=false
			scroll_x=false
			scroll_y=false
			}
		*/
		//camera_border_right=camera_border_right+1
		}
	
	
	if(autoscroll_x==true)
		{
		
		//camera_border_left=screen_left
		autoscroll_speed=global.hsp_timer
		screen_left=screen_left+(autoscroll_speed*autoscroll_dir_x)
		__view_set( e__VW.XView, view_current,  screen_left)

		
			
		if(autoscroll_dir_x>0)
			{
			if(screen_left+482>=camera_border_right)
				{
				screen_left=camera_border_right-480
				camera_border_left=screen_left
				autoscroll_x=false
				//scroll_x=false
				//scroll_y=false
				}
			}
		if(autoscroll_dir_x<0)
			{
			if(screen_left-2<=camera_border_left)
				{
				screen_left=camera_border_left
				camera_border_right=screen_left+480
				autoscroll_x=false
				//scroll_x=false
				//scroll_y=false
				}
			}
		
		/*
		if(screen_left+482>=camera_border_right)
			{
			screen_left=camera_border_right-480
			autoscroll_x=false
			scroll_x=false
			scroll_y=false
			}
		*/
		//camera_border_right=camera_border_right+1
		}
	
	//задел на автоскролл
	/*
	if(room==room_area_test2)
		{
		
		camera_border_left=camera_border_left+1
		screen_left=camera_border_left
		//camera_border_right=camera_border_right+1
		}
	*/
	
	
	//тряска
	
	if(shake_counter>0)
		{
		shake_counter=shake_counter-1
		layer_set_visible(layer_get_id("effect_screen_shake"), true)
		}
	else
		{
		layer_set_visible(layer_get_id("effect_screen_shake"), false)
		}
	
	
	if(o_controller.player2==noone)
		{
		if(o_controller.player1.boss_gate!=noone)
			{				
			scroll_x=false
			scroll_y=false
			if(screen_left<view_ang.x && scroll_left==false)	
				{
				scroll_right=true
				}
			if(screen_left>view_ang.x && scroll_right==false)	
				{
				scroll_left=true
				}
			if(screen_top<view_ang.y && scroll_up==false)	
				{
				scroll_down=true
				}
			if(screen_top>view_ang.y && scroll_down==false)	
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
			if(screen_left<view_ang.x && scroll_left==false)	
				{
				scroll_right=true
				}
			if(screen_left>view_ang.x && scroll_right==false)	
				{
				scroll_left=true
				}
			if(screen_top<view_ang.y && scroll_up==false)	
				{
				scroll_down=true
				}
			if(screen_top>view_ang.y && scroll_down==false)	
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
			if(screen_left<view_ang.x && scroll_left==false)	
				{
				scroll_right=true
				}
			if(screen_left>view_ang.x && scroll_right==false)	
				{
				scroll_left=true
				}
			if(screen_top<view_ang.y && scroll_up==false)	
				{
				scroll_down=true
				}
			if(screen_top>view_ang.y && scroll_down==false)	
				{
				scroll_up=true
				}
			}
		}
	
	
	

		if(scroll_x==true && autoscroll_x==false)
		//&& screen_left>camera_border_left
		//&& screen_right<camera_border_right)
			{
			if(scroll_left==false && scroll_right==false)
				{
				if(whole_stop==true)
					{
					if(my_x<(screen_left+(screen_width/2)) && whole_stop_l==false)
						{
						if(my_x - floor(screen_width/2)-screen_left>12)
							{
							__view_set( e__VW.XView, view_current,  screen_left+4)
							
							}
						else if(my_x - floor(screen_width/2)-screen_left<-12)
							{
							__view_set( e__VW.XView, view_current,  screen_left-4)
							
							}
						else 
							{
							__view_set( e__VW.XView, view_current, my_x - floor(screen_width/2) )
							screen_left=my_x - floor(screen_width/2)
							}
						}
					}
				else
					{
					if(move_left==true)
						{
						if(my_x - floor(screen_width/2)-screen_left>12)
							{
							__view_set( e__VW.XView, view_current,  screen_left+4)
							}
						else
							{
							move_left=false
							}
						}
					}
					
				if(whole_stop_l==true)
					{
					if(my_x>(screen_left+(screen_width/2)) && whole_stop==false)
						{
					    if(my_x - floor(screen_width/2)-screen_left>12)
							{
							__view_set( e__VW.XView, view_current,  screen_left+4)
							
							}
						else if(my_x - floor(screen_width/2)-screen_left<-12)
							{
							__view_set( e__VW.XView, view_current,  screen_left-4)
							
							}
						else 
							{
							__view_set( e__VW.XView, view_current, my_x - floor(screen_width/2) )
							screen_left=my_x - floor(screen_width/2)
							}
						}
					}
				else
					{
					if(move_right==true)
						{
						if(my_x - floor(screen_width/2)-screen_left<-12)
							{
							__view_set( e__VW.XView, view_current,  screen_left-4)
							}
						else
							{
							move_right=false
							}
						}
					}
				if(move_left==false && move_right==false)
					{
					if(my_x - floor(screen_width/2)-screen_left>4)
						{
						if(my_x - floor(screen_width/2)-screen_left>12)
							{
							__view_set( e__VW.XView, view_current,  screen_left+6)
							
							}
						else
							{
							__view_set( e__VW.XView, view_current,  screen_left+4)
							//breakpoint="whole_stop_2"
							}
						}
					else if(my_x - floor(screen_width/2)-screen_left<-4)
						{
						if(my_x - floor(screen_width/2)-screen_left<-12)
							{
							__view_set( e__VW.XView, view_current,  screen_left-6)
							}
						else
							{
							__view_set( e__VW.XView, view_current,  screen_left-4)
							}
						}
					else
						{
						__view_set( e__VW.XView, view_current, my_x - floor(screen_width/2) )
						screen_left=my_x - floor(screen_width/2)
						//breakpoint="whole_stop_true"
						}
					}
					
				}
			}
		else
			{
			if(scroll_left==true)
				{
				if(screen_left>view_ang.x)
					{
					__view_set( e__VW.XView, view_current, screen_left-(3))
					}
				else
					{
					__view_set( e__VW.XView, view_current, view_ang.x)
					scroll_right=false
					scroll_left=false
					}
				}
				
			if(scroll_right==true)
				{
				if(screen_left<view_ang.x)
					{
					__view_set( e__VW.XView, view_current, screen_left+(3))
					}
				else
					{
					__view_set( e__VW.XView, view_current, view_ang.x)
					scroll_right=false
					scroll_left=false
					}
				}
			}

	
		if(scroll_x==true  && autoscroll_x==false)
			{
				
			//раскомментить стоп камеры	
			
			 if(my_x<=camera_border_left+(screen_width/2)
			 && 
			 (whole_stop_l==false
			 || screen_left<=camera_border_left))
		        {
		        __view_set( e__VW.XView, view_current, camera_border_left )
		        }
		    if(my_x>=camera_border_right-(screen_width/2)
			&& 
			(whole_stop==false
			|| screen_right>=camera_border_right))
		        {
		        __view_set( e__VW.XView, view_current, camera_border_right-screen_width )
		        }
					
			}
			/*
			
		    if(screen_left<=camera_border_left)
		        {
		        __view_set( e__VW.XView, view_current, camera_border_left )
		        }
		
		    if(screen_left>=camera_border_right-(screen_width))
		        {
		        __view_set( e__VW.XView, view_current, camera_border_right-screen_width )
		        }
			}
			*/
			
			
			/*
		if(scroll_x==true)
			{
		    if(my_x<=screen_width/2)
		        {
		        __view_set( e__VW.XView, view_current, 0 )
		        }
		    if(my_x>=room_width-(screen_width/2))
		        {
		        __view_set( e__VW.XView, view_current, room_width-screen_width )
		        }
			}
		*/


	//camera Y-axis    
	if((my_y>(camera_border_top+screen_height/2)) 
	&& (my_y<(camera_border_bottom-screen_height/2)))
	    {
		if(scroll_y==true && autoscroll_y==false)
			{
			
			/*
			//раскомментить для покачивания!
			
			counter=((counter+1) mod 360)	
			var y_prev=round(my_y)
			vsp=round((my_y + dsin_array[floor(counter)]*20)-y_prev)
			my_y=my_y+round(vsp)
			*/
			if(scroll_down==false && scroll_up==false)
				{
				if(my_y - floor(screen_height/2)-screen_top>10)
					{
					__view_set( e__VW.YView, view_current,  screen_top+10)
					}
				else if(my_y - floor(screen_height/2)-screen_top<-10)
					{
					__view_set( e__VW.YView, view_current,  screen_top-10)
					}
				else
					{
					__view_set( e__VW.YView, view_current, my_y - floor(screen_height/2) )
					}
					
					
			    //__view_set( e__VW.YView, view_current, my_y - floor(screen_height/2) )
				}
			}
		else
			{
			if(scroll_up==true)
				{
				if(screen_top>view_ang.y)
					{
					__view_set( e__VW.YView, view_current, screen_top-(5))
					}
				else
					{
					__view_set( e__VW.YView, view_current, view_ang.y)
					scroll_up=false
					scroll_down=false
					}
				}
				
			if(scroll_down==true)
				{
				if(__view_get(e__VW.YView, view_current)<view_ang.y)
					{
					__view_set( e__VW.YView, view_current, screen_top+(5))
					}
				else
					{
					__view_set( e__VW.YView, view_current, view_ang.y)
					scroll_up=false
					scroll_down=false
					}
				}
			}
	    }
	else
	    {
		if(scroll_y==true && autoscroll_y==false)
			{
				
			/*	
		    if(my_y<=screen_height/2)
		        {
		        __view_set( e__VW.YView, view_current, 0 )
		        }
		    if(my_y>=room_height-(screen_height/2))
		        {
		        __view_set( e__VW.YView, view_current, room_height-screen_height )
		        }
			*/
			
			/*
			if(screen_top<=screen_height/2)
		        {
		        __view_set( e__VW.YView, view_current, 0 )
		        }
		    if(screen_top>=room_height-(screen_height/2))
		        {
		        __view_set( e__VW.YView, view_current, room_height-screen_height )
		        }
			*/	
			
			
			if(my_y<=camera_border_top+(screen_height/2))
		        {
		        __view_set( e__VW.YView, view_current, camera_border_top )
		        }
		    if(my_y>=camera_border_bottom-(screen_height/2))
		        {
		        __view_set( e__VW.YView, view_current, (camera_border_bottom-(screen_height)) )
		        }
				
			}
	    }

previous_left=screen_left
screen_left=__view_get( e__VW.XView, view_current )
screen_right=__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )
screen_width=__view_get( e__VW.WView, view_current )
previous_top=screen_top
screen_top=__view_get( e__VW.YView, view_current )
screen_bottom=__view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )
screen_height=__view_get( e__VW.HView, view_current )



camera_x=screen_left
camera_y=screen_top


if(room==room_area_test3)
	{
	layer_x("Effect_1", layer_get_x("Effect_1")-2)
	}

if(room==room_area_test4)
	{
	
	layer_y("background_sky",camera_y)
	layer_x("backgrounds_sky", camera_x*-0.5)
	var lay_x=layer_get_x("background_sky")
	
	lay_x=lay_x mod 480
	
	//layer_hspeed("background_sky", -5+(o_controller.player1.hsp))
	layer_x("background_sky", lay_x-(8+(prev_cam-screen_left)))
	/*
	var lay_y=layer_get_y("background_clouds")
	counter=((counter+1) mod 360)	
	var y_prev=(lay_y)
	vsp=((lay_y + dsin_array[floor(counter)]*20)-y_prev)
	lay_y=lay_y+(vsp)
	*/
	//layer_y("background_clouds",lay_y)
	}



if(room==room_area_test)
	{
	layer_x("Backgrounds_1", camera_x*0.5)
	layer_y("Backgrounds_1", camera_y*0.5)
	}

if(room==room_area_test2)
	{
	layer_x("background_sky", camera_x)
	layer_y("background_sky", camera_y)
	layer_x("background_clouds", camera_x*0.9)
	layer_y("background_clouds", camera_y)
	}
	
}