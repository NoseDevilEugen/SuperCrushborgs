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

  
if(AI_active==true)
	{
	if(grenade_toss_timer>0)
		{
		grenade_toss_timer=grenade_toss_timer-1
		image_speed=0
		}
	else
		{
		//grenade_toss_timer=150
		image_speed=0.2
		}
	}	
if(AI_active==true
&& vsp<=6
&& !place_meeting(x, y+1, o_floor)
&& !place_meeting(x, y+1, o_one_way_floor))
	{
	vsp=vsp+grav
	}

//locked=false
pushed_ver=false
pushed_hor=false

col=false

scr_init_slopes(state, states.grounded)	

distance_to_player=abs(x-player.x)

if(abs(x-player.x)>10)
	{
	image_xscale=-sign(x-player.x)
	}
	
if(image_index==image_number-image_speed-2)
	{
	//grenade_toss_timer=150
	with(instance_create(x, bbox_top, grenade))
		{
		image_xscale=other.image_xscale
		hsp=(other.throw_hsp*other.image_xscale)
		vsp=other.throw_vsp
		}
	if(throw_hsp>5)
		{
		throw_hsp=2
		}
	else
		{
		throw_hsp=throw_hsp+1
		}
	if(throw_vsp<-6)
		{
		throw_vsp=-3
		}
	else
		{
		throw_vsp=throw_vsp-1
		}
	
	}
	

if(hsp_final!=0 || vsp!=0)
	{
	scr_init_conv_belt()	

	scr_init_horizontal_collisions()              
	x=hsp_final+x
	x=floor(x)  
	}

col_v=false 

if(hsp_final!=0 || vsp!=0)
	{
	scr_init_vertical_collisions()      	

	scr_init_oneway_collisions()

	scr_init_oneway_collisions_end()
	
	if(place_meeting(x, y, o_floor))
		{
		y=y-1
		}


	y=y+floor(vsp)
	y=floor(y)
	}

	
if(image_index>=image_number-image_speed)
	{
	grenade_toss_timer=150
	image_index=0
	image_speed=0
	}
	
if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}

if(AI_active==true)
	{
	hp=scr_boss_get_damage(hp)
	}

if(hp<=0)
	{
	scr_soldier_death(s_simple_soldier_dead, s_simple_soldier_dead_animated)
	}