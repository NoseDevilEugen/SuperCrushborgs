/// @description Insert description here
// You can write your code in this editor

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}

if(action==hand_actions.toss)
	{
	aim_timer=60
	stuck_timer=60
	grav=o_spider.image_yscale*0.3
	
	
	
	
	if(place_meeting(x+hsp*2, y, o_floor))
		{
		hsp=hsp*-1
		}
	x=x+floor(hsp)
	if(grav>0)
		{
		if(vsp>4)
			{
			hsp=0
			vsp=0
			action=hand_actions.aim
			}
		if(vsp<6)
			{
			vsp=vsp+grav
			}
		}
	else
		{
		if(vsp<-4)
			{
			hsp=0
			vsp=0
			action=hand_actions.aim
			}
		if(vsp>-6)
			{
			vsp=vsp+grav
			}
		}
	y=y+floor(vsp)
	}



if(action==hand_actions.aim)
	{
	if(aim_timer>20)
		{
		player_dir=point_direction(x, y, o_spider.player.x, o_spider.player.y)
		}
	image_xscale=1
	image_yscale=1
	hsp=0
	vsp=0
	if(aim_timer>0)
		{
		aim_timer=aim_timer-1
		image_angle=player_dir+90
		}
	else
		{
		action=hand_actions.attack
		}
	}
	
if(action==hand_actions.attack)
	{
	hsp=lengthdir_x(8, player_dir)
	vsp=lengthdir_y(8, player_dir)
	if(place_meeting(x+hsp, y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		with(instance_create(x, y, o_spider_shockwave))
			{
			sprite_index=s_main_shockwave_ver
			image_xscale=sign(other.hsp)
			image_yscale=1
			while(place_meeting(x, y, o_floor))
				{
				x=x-image_xscale
				}
			vsp=-6
			}
		with(instance_create(x, y, o_spider_shockwave))
			{
			sprite_index=s_main_shockwave_ver
			image_xscale=sign(other.hsp)
			image_yscale=-1
			while(place_meeting(x, y, o_floor))
				{
				x=x-image_xscale
				}
			vsp=6
			}
		hsp=0
		vsp=0
		action=hand_actions.stuck
		}
	x=x+floor(hsp)
	
	if(place_meeting(x, y+vsp, o_floor))
		{
		while(!place_meeting(x, y+sign(vsp), o_floor))
			{
			y=y+sign(vsp)
			}
		with(instance_create(x, y, o_spider_shockwave))
			{
			image_xscale=-1
			image_yscale=sign(other.vsp)
			while(place_meeting(x, y, o_floor))
				{
				y=y-image_yscale
				}
			hsp=-6
			
			}
		with(instance_create(x, y, o_spider_shockwave))
			{
			image_xscale=1
			image_yscale=sign(other.vsp)
			while(place_meeting(x, y, o_floor))
				{
				y=y-image_yscale
				}
			hsp=6
			}
		hsp=0
		vsp=0
		action=hand_actions.stuck
		}
	y=y+floor(vsp)
	}

if(action==hand_actions.stuck)
	{
	if(stuck_timer>0)
		{
		stuck_timer=stuck_timer-1
		}
	else
		{
		action=hand_actions.back
		}
	}
	
if(action==hand_actions.back)
	{
	return_dir=point_direction(x, y, o_spider.x, o_spider.y)
	hsp=lengthdir_x(5, return_dir)
	vsp=lengthdir_y(5, return_dir)
	x=x+floor(hsp)
	y=y+floor(vsp)
	}

	
hp=scr_boss_get_damage(hp)
	
	
if(hp<=0)
	{
	scr_boss_death(sprite_index, 1, my_next_room)
	}