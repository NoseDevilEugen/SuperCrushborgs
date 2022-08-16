/// @description Insert description here
// You can write your code in this editor

scr_change_focus()

if(x>o_camera.screen_left-16
&& x<o_camera.screen_right+16
&& y>o_camera.screen_top-16 
&& y<o_camera.screen_bottom+16)
    {
    enemy_onscreen=true
	AI_active=true
    }


if(((vsp<=6 && image_yscale==1) ||  (vsp>=6 && image_yscale==-1))
&& !place_meeting(x, y+sign(image_yscale), o_one_way_floor))
	{
	vsp=vsp+grav
	}

//locked=false
pushed_ver=false
pushed_hor=false

col=false


if(image_yscale==1)
	{
	scr_init_slopes(state, states.grounded)	
	}
else
	{
	scr_init_slopes_ceiling_soldier(state, states.grounded)	
	}

if(AI_active==true)
	{

	if(action==shooting_soldier.idle)
		{
			
		if(image_xscale==-sign(x-player.x) 
		&& -sign(x-player.x)!=0
		&& image_index<=1.8)
			{
			image_index=image_number-1		
			}
			
		if(image_index>=1.9 && image_index<=2)
			{
			if(image_xscale!=-sign(x-player.x) && -sign(x-player.x)!=0)
				{
				image_index=0
				image_xscale=-sign(x-player.x)
				}
				
			}
		
		if(image_index>image_number-0.8)
			{
		
			image_index=0
		
			if(player.y<bbox_bottom+4 && player.y>bbox_top-4
			&& action==shooting_soldier.idle)
				{
				bullet_x=x+(20*image_xscale)
				bullet_y=y-(10*image_yscale)
				dir=point_direction(x, y, player.x, player.y)
				action=shooting_soldier.aim_straight
				}
				
			if(player.x>bbox_left-4 && player.x<bbox_right+4)
				{
				if(image_yscale==1)
					{
					if(player.y<y
					&& action==shooting_soldier.idle)
						{
						bullet_x=x+(3*image_xscale)
						bullet_y=y-(30*image_yscale)
						dir=point_direction(x, y, player.x, player.y)
						action=shooting_soldier.aim_up
						}
					if(player.y>y
					&& action==shooting_soldier.idle)
						{
						bullet_x=x
						bullet_y=y+(30*image_yscale)
						dir=point_direction(x, y, player.x, player.y)
						action=shooting_soldier.aim_down
						}
					}
				else
					{
					if(player.y<y
					&& action==shooting_soldier.idle)
						{
						bullet_x=x
						bullet_y=y+(30*image_yscale)
						dir=point_direction(x, y, player.x, player.y)
						action=shooting_soldier.aim_down
						}
					if(player.y>y
					&& action==shooting_soldier.idle)
						{
						bullet_x=x+(3*image_xscale)
						bullet_y=y-(30*image_yscale)
						dir=point_direction(x, y, player.x, player.y)
						action=shooting_soldier.aim_up
						}
					
					}
				}
			
			if(action==shooting_soldier.idle)
				{
				dir=point_direction(x, y, player.x, player.y)
				}
			
			if(image_yscale==1)
				{
				if((image_xscale==-1 && dir<160 && dir>110)
				|| (image_xscale==1 && dir<70 && dir>20)
				&& action==shooting_soldier.idle)
					{
					bullet_x=x+(12*image_xscale)
					bullet_y=y-(21*image_yscale)
					dir=point_direction(x, y, player.x, player.y)
					action=shooting_soldier.aim_diagonal_up
					}
				
				if((image_xscale==-1 && dir<250 && dir>200)
				|| (image_xscale==1 && dir<340 && dir>290)
				&& action==shooting_soldier.idle)
					{
					bullet_x=x+(13*image_xscale)
					bullet_y=y
					dir=point_direction(x, y, player.x, player.y)
					action=shooting_soldier.aim_diagonal_down
					}
				}
			else
				{
				if((image_xscale==-1 && dir<250 && dir>200)
				|| (image_xscale==1 && dir<340 && dir>290)
				&& action==shooting_soldier.idle)
					{
					bullet_x=x+(12*image_xscale)
					bullet_y=y-(21*image_yscale)
					dir=point_direction(x, y, player.x, player.y)
					action=shooting_soldier.aim_diagonal_up
					}
				
				if((image_xscale==-1 && dir<160 && dir>110)
				|| (image_xscale==1 && dir<70 && dir>20)
				&& action==shooting_soldier.idle)
					{
					bullet_x=x+(13*image_xscale)
					bullet_y=y
					dir=point_direction(x, y, player.x, player.y)
					action=shooting_soldier.aim_diagonal_down
					}
				}
			}		
		}
	
	if(action==shooting_soldier.aim_straight
	|| action==shooting_soldier.aim_up
	|| action==shooting_soldier.aim_down
	|| action==shooting_soldier.aim_diagonal_up
	|| action==shooting_soldier.aim_diagonal_down)
		{
		
		if(timer_shoot>0)
			{
			timer_shoot=timer_shoot-1
			
			}
		if(timer_shoot==30)
			{
			switch(action)
				{
				case shooting_soldier.aim_straight:
					{
					bullet_y=y-(10*image_yscale)
					}
				break
				case shooting_soldier.aim_up:
					{
					bullet_y=y-(30*image_yscale)
					}
				break
				case shooting_soldier.aim_down:
					{
					bullet_y=y+(30*image_yscale)
					}
				break
				case shooting_soldier.aim_diagonal_up:
					{
					bullet_y=y-(21*image_yscale)
					}
				break
				case shooting_soldier.aim_diagonal_down:
					{
					bullet_y=y
					}
				break
				}
			with(instance_create(bullet_x, bullet_y, o_joe_spreadgun_bullet))
				{
				sprite_index=s_enemy_bullet_small2
				hsp=lengthdir_x(bullet_speed-1, other.dir)
				vsp=lengthdir_y(bullet_speed-1, other.dir)
				}
			}
		if(timer_shoot<=0)
			{
			image_index=0
			action=shooting_soldier.idle
			timer_shoot=70
			}
		}

	}
/*
else
	{
	while(place_meeting(x, y, o_floor))
		{
		y=y-image_yscale
		}
	}
*/
scr_init_conv_belt()
    
scr_init_horizontal_collisions()              
x=hsp_final+x
x=floor(x)  


col_v=false
scr_init_vertical_collisions()    

scr_init_oneway_collisions()

scr_init_oneway_collisions_end()


if(place_meeting(x, y, o_floor))
	{
	y=y-image_yscale
	}


y=y+floor(vsp)

y=floor(y)

	
if(!place_meeting(x, y+sign(image_yscale), o_floor)
&& ow_p==false)
	{
	action=shooting_soldier.jump
	}	

if(action==shooting_soldier.jump
&& (place_meeting(x, y+sign(image_yscale), o_floor)
|| ow_p==true))
	{
	image_index=0
	action=shooting_soldier.idle
	timer_shoot=90
	}

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}
	
hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	scr_soldier_death(s_simple_soldier_dead, s_simple_soldier_dead_animated)
	}
	

sprite_index=sprite_array[action]