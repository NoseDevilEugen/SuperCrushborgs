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
		}
	else if (action==shield_actions.idle)
		{
		action=shield_actions.grenade_throw
		image_index=0
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


distance_to_player=abs(x-player.x)

if(abs(x-player.x)>5)
	{
	image_xscale=-sign(x-player.x)
	}
	
my_shield.image_xscale=image_xscale
	
if(action==shield_actions.idle)
	{
	if(my_shield.hp>0)
		{
		my_shield.mask_index=s_simple_soldier_shield_mask
		}
	else
		{
		with(instance_create(x, y, o_special_fx))
			{
			depth=other.depth-1
			image_xscale=other.image_xscale
			sprite_index=s_shield_explode
			image_index=0
			image_speed=0.2
			}
		image_index=0
		action=shield_actions.pain
		my_shield.mask_index=s_sprite_empty
		}
	}
else
	{
	my_shield.mask_index=s_sprite_empty
	}
	
if(action==shield_actions.pain)
	{
	pain_timer=pain_timer-1
	
	if(pain_timer<60)
		{
		image_index=0
		}
	
	if(pain_timer<0)
		{
		action=shield_actions.idle
		my_shield.hp=10
		grenade_toss_timer=120
		pain_timer=90
		//grenade_toss_timer=60*irandom_range(1, 3)
		}
	}
	
if(action==shield_actions.grenade_throw 
&& image_index>=image_number-1)
	{
	//grenade_toss_timer=150
	with(instance_create(x, bbox_top, grenade))
		{
		image_xscale=other.image_xscale
		hsp=(other.throw_hsp*other.image_xscale)
		vsp=other.throw_vsp
		}
	throw_hsp=throw_hsp+throw_add_h
	throw_vsp=throw_vsp+throw_add_v
	if(throw_hsp>6 || throw_hsp<2)
		{
		throw_add_h=throw_add_h*-1
		}
	if(throw_vsp<-6 || throw_vsp>-2)
		{
		throw_add_v=throw_add_v*-1
		}
	action=shield_actions.idle
	my_shield.hp=10
	grenade_toss_timer=120
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

	y=y+floor(vsp)
	y=floor(y)
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
	if(instance_exists(my_shield))
		{
		instance_destroy(my_shield)
		}
	}
	
sprite_index=s_array[action]