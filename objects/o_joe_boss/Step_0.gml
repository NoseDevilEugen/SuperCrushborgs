/// @description Insert description here
// You can write your code in this editor



//focus on player
if(player_change_timer>0)
	{
	player_change_timer=player_change_timer-1
	}
else
	{

	player_change_timer=300
	if(player==o_controller.player1)
		{
		if(o_controller.player2!=noone && o_controller.player1!=noone)
			{
			if(o_controller.player2.state!=states.dead)
				{
				player=o_controller.player2
				}
			}
		}
	else if(player==o_controller.player2)
		{
		if(o_controller.player2!=noone && o_controller.player1!=noone)
			{
			if(o_controller.player1.state!=states.dead)
				{
				player=o_controller.player1
				}
			}
		}
	}




//newest AI patch brand new shit goes here
//go from idle to jump windup
if(joe_action==joe_actions.phase1_idle)
	{
	if(idle_timer>0)
		{
		idle_timer=idle_timer-1
		}
	else
		{
		joe_action=joe_actions.phase1_prejump
		image_index=0
		idle_timer=60
		}
	}

//go from prejump into jump
if(joe_action==joe_actions.phase1_prejump)
	{
	if(image_index>=image_number-image_speed)
		{
		joe_action=joe_actions.phase1_jump
		vsp=jump_vspeed-irandom_range(-2, 3)
		//show_message(vsp)
		hsp=jump_hspeed*face_direction
		}
	}
	
//jump turns into landing
if(joe_action==joe_actions.phase1_jump)
	{		
	if(hsp==0)
		{
		hsp=-face_direction*jump_hspeed
		}
		
	if(place_meeting(x, y+1, o_floor)
	&& vsp>=0)
		{
		joe_action=joe_actions.phase1_land
		image_index=0
		hsp=0
		}
	}
	
//landing changes into idle with shot
if(joe_action==joe_actions.phase1_land)
	{
	if(image_index>=image_number-image_speed)
		{
		joe_action=joe_actions.phase1_idle
		if(shoot_balls==true)
			{
			//player_direction=point_direction(x, y, player.x+(player.hsp*2), player.y+(player.vsp*2))
			with(instance_create(x-15, y-5, o_w_boss_big_bullet))
				{
				hsp=lengthdir_x(bullet_speed, 180)
				vsp=lengthdir_y(bullet_speed, 180)
				}
			
			with(instance_create(x+15, y-5, o_w_boss_big_bullet))
				{
				hsp=lengthdir_x(bullet_speed, 0)
				vsp=lengthdir_y(bullet_speed, 0)
				}
			shoot_balls=false
			//shoot balls into sides
			}
		else
			{
			with(instance_create(x, y-10, o_joe_boss_grenade))
				{
				hsp=irandom_range(-2,2)
				vsp=-irandom_range(5, 7)
				}
			shoot_balls=true
			//shoot grenade from top
			}
		}
	}


//change phase from 1 to 2
if(hp<=150
&& phase==1)
	{
	phase=2
	joe_action=joe_actions.phase2_seq
	vsp=-6
	hsp=1
	if(o_controller.player2!=noone)
		{
		joe_bosses=2
		with(instance_create(x, y, o_joe_boss))
			{
			if(other.player==o_controller.player2)
				{
				player=o_controller.player1
				}
			else
				{
				player=o_controller.player2
				}
			phase=2	
			player_change_timer=other.player_change_timer
			joe_bosses=1
			hp=150
			joe_action=joe_actions.phase2_seq
			vsp=-5
			hsp=-1
			}
		}
	//hp=100
	}

if(joe_action==joe_actions.phase2_seq
&& vsp>2
&& y>o_camera.screen_top+100
&& y<o_camera.screen_bottom-100)
	{
	//ystart=y
	hsp=0
	vsp=0
	counter=0
	y_start=y
	off=off*-1
	joe_action=joe_actions.fly
	}

if(joe_action==joe_actions.fly)
	{
		
	counter=(counter+4) mod 360	
		
	face_direction=image_xscale	
	vsp=((y_start + dsin_array[floor(counter)]*20)-yprevious)
	hsp=2*image_xscale
	

	if(place_meeting(x+image_xscale, y, o_floor))
		{
		image_xscale=image_xscale*-1
		}
	

	if(timer_shot2>0)
		{
		timer_shot2=timer_shot2-1
		}
	else
		{
		image_index=0
		save_xscale=image_xscale
		joe_action=joe_actions.shoot
		}
	}
	

	

	
if(joe_action==joe_actions.shoot)
	{
	hsp=0
	vsp=0
	if(player.x-x!=0)
		{
		image_xscale=sign(player.x-x)
		}
	image_speed=0.2
	if(image_index==3)
		{
		
		player_direction=point_direction(x, y, player.x+(player.hsp*2), player.y+(player.vsp*2))
		scr_joe_shoot(weapon, player_direction)
		timer_shot2=irandom_range(60, 180)
		}
	if(image_index==7)
		{
		image_xscale=save_xscale
		
		if(y>o_camera.screen_top+100
		&& y<o_camera.screen_bottom-100)
			{
			y_start=y
			counter=0
			}
		off=off*-1
		
		joe_action=joe_actions.fly
		}
	}
	
	
scr_init_slopes(joe_state, states.grounded)
scr_init_slopes_ceiling_soldier(joe_state, states.grounded)
scr_init_conv_belt()
    
scr_init_horizontal_collisions()              
x=hsp_final+x
x=floor(x)  

col_v=true



scr_init_vertical_collisions()      
    
scr_init_oneway_collisions()      

scr_init_oneway_collisions_end()
	
if(place_meeting(x, y, o_floor))
	{
	y=y-1
	}

y+=vsp
y=floor(y)

if(place_meeting(x, y+1, o_floor))
	{
	joe_state=states.grounded
	}
else
	{
	vsp=vsp+grav
	joe_state=states.airborne
	}	
	
hp=scr_boss_get_damage(hp)

if(hp<=0)
	{
	if(instance_number(id.object_index)==1)
		{
		scr_boss_death(sprite_index, 10, my_next_room)
		}
	else
		{
		scr_boss_death(sprite_index, 10, noone)
		}
	}
	
if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}
	
sprite_index=s_array[joe_action]