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

/*
if(vsp<=6 
&& !place_meeting(x, y+1, o_one_way_floor))
	{
	vsp=vsp+grav
	}
*/
//locked=false
pushed_ver=false
pushed_hor=false

col=false

if(AI_active==true)
	{
	counter=(counter+2) mod 360
	vsp = (ystart + (dsin_array[floor(counter)]*10))-yprevious

	if(action==shooting_soldier.idle)
		{
		if(image_index>=1.9 && image_index<=2)
			{
			if(image_xscale!=-sign(x-player.x) && -sign(x-player.x)!=0)
				{
				image_index=0
				image_xscale=-sign(x-player.x)
				}
			}
		
		if(image_index>=image_number-0.8)
			{
		
			image_index=0
		
			if(player.y<bbox_bottom+4 && player.y>bbox_top-4
			&& action==shooting_soldier.idle)
				{
				bullet_x=x+(16*image_xscale)
				bullet_y=y-13
				dir=point_direction(x, y, player.x, player.y)
				action=shooting_soldier.aim_straight
				}
				
			if(player.x>bbox_left-4 && player.x<bbox_right+4)
				{
				if(player.y<y
				&& action==shooting_soldier.idle)
					{
					bullet_x=x-(4*image_xscale)
					bullet_y=y-30
					dir=point_direction(x, y, player.x, player.y)
					action=shooting_soldier.aim_up
					}
				if(player.y>y
				&& action==shooting_soldier.idle)
					{
					bullet_x=x-(3*image_xscale)
					bullet_y=y+12
					dir=point_direction(x, y, player.x, player.y)
					action=shooting_soldier.aim_down
					}
				}
			
			if(action==shooting_soldier.idle)
				{
				dir=point_direction(x, y, player.x, player.y)
				}
			
			if((image_xscale==-1 && dir<160 && dir>110)
			|| (image_xscale==1 && dir<70 && dir>20)
			&& action==shooting_soldier.idle)
				{
				bullet_x=x+(11*image_xscale)
				bullet_y=y-24
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
		}
	
	bullet_y=bullet_y+vsp
	
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
			with(instance_create_layer(bullet_x, bullet_y, "Bullets", o_joe_spreadgun_bullet))
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
			timer_shoot=90
			}
		}

	}
scr_init_conv_belt()
    
scr_init_horizontal_collisions()              
x=hsp_final+x
x=floor(x)




col_v=false
scr_init_vertical_collisions()    

scr_init_oneway_collisions()

scr_init_oneway_collisions_end()

y=y+(vsp)
y=round(y)


if(instance_exists(my_jetpack))
	{
	my_jetpack.image_xscale=image_xscale
	my_jetpack.x=x-(12*image_xscale)
	//my_jetpack.x=round(x)
	my_jetpack.y=my_jetpack.y+vsp
	my_jetpack.y=round(my_jetpack.y)
	}
else
	{
	if(instance_exists(target))
		{
		instance_destroy(target)
		}
	instance_change(o_shooting_soldier, true)
	}

	
if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}
	
hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	if(instance_exists(my_jetpack))
		{
		with(my_jetpack)
			{
			dir=point_direction(x, y, other.player.x+other.player.hsp, other.player.y+other.player.vsp)

			
			x_center=x
			y_center=y
			orbit=5
			
			//x = lengthdir_x(10, 0) + x
			//y = lengthdir_y(10, 0) + y
			
			jetpack_free=true
			}
		}
	scr_soldier_death(s_simple_soldier_dead, s_simple_soldier_dead_animated)
	}
	

sprite_index=sprite_array[action]