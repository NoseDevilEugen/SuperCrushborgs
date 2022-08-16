/// @description Insert description here
// You can write your code in this editor

if(boss_obj==o_boss_pendulum)
	{
	o_camera.scroll_x=true
	o_camera.scroll_y=true
	o_camera.scroll_right=false
	o_camera.scroll_left=false
	o_camera.scroll_up=false
	o_camera.scroll_down=false
	}
	
if(boss_obj==o_spider)
	{
	o_camera.scroll_x=true
	o_camera.scroll_y=true
	o_camera.scroll_right=false
	o_camera.scroll_left=false
	o_camera.scroll_up=false
	o_camera.scroll_down=false
	if(instance_exists(block_bug_out))
		{
		instance_destroy(block_bug_out, true)
		}
	}
	
if(boss_obj==o_richter_boss)
	{
	o_camera.scroll_x=true
	o_camera.scroll_y=true
	o_camera.scroll_right=false
	o_camera.scroll_left=false
	o_camera.scroll_up=false
	o_camera.scroll_down=false
	if(instance_exists(block_way_out))
		{
		instance_destroy(block_way_out, true)
		}
	if(instance_exists(richter_angle))
		{
		instance_destroy(richter_angle)
		}
	}

if(boss_obj==o_boss_pendulum)
	{
	o_camera.scroll_x=true
	o_camera.scroll_y=true
	o_camera.scroll_right=false
	o_camera.scroll_left=false
	o_camera.scroll_up=false
	o_camera.scroll_down=false
	if(instance_exists(block_out))
		{
		instance_destroy(block_out, true)
		}
	}
	
if(boss_obj==o_w_boss_head)
	{
	if(my_next_room!=noone)
		{
		o_controller.my_next_room=my_next_room
		o_controller.afterboss_timer=180
		}
	audio_stop_sound(o_controller.music_array[0])
	if(instance_exists(lvl1_out))
		{
		instance_destroy(lvl1_out)
		}
	}
	
if(boss_obj==o_dual_spider)
	{
	if(instance_number(o_dual_spider)<=0)
		{
		my_next_room=room_area_test4
		instance_destroy(ceiling_break)
		if(my_next_room!=noone)
			{
			o_controller.my_next_room=my_next_room
			o_controller.afterboss_timer=180
			}
		}
	}
	
if(boss_obj==o_wall_lastboss)
	{
	my_next_room=room_area_test3
	instance_destroy(block2to3)
	if(my_next_room!=noone)
		{
		o_controller.my_next_room=my_next_room
		o_controller.afterboss_timer=60
		}
	}	
	
if(boss_obj==o_joe_boss)
	{
	if(instance_number(o_joe_boss)<=0)
		{
		o_camera.scroll_x=true
		o_camera.scroll_y=true
		o_camera.scroll_right=false
		o_camera.scroll_left=false
		o_camera.scroll_up=false
		o_camera.scroll_down=false
		instance_destroy(level4_floor_explodes)
		instance_destroy(level4_floor_explodes2)
		instance_destroy(level4_floor_explodes3)
		instance_destroy(level4_floor_explodes4)
		instance_destroy(huge_block_afterboss)
		}
	}