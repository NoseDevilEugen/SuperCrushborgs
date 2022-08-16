//if enemy is onscreen

scr_change_focus()

if(x>o_camera.screen_left-32 
&& x<o_camera.screen_right+32
&& y>o_camera.screen_top-32 
&& y<o_camera.screen_bottom+32)
    {
    enemy_onscreen=true
	AI_active=true
    }
	
if(AI_active==true)
	{
	//speed for enemy's run
	if(enemy_action==jija_actions.chase)
	    {
	    hsp=movespeed*image_xscale
		if(enemy_state==enemy_states.grounded)
			{
			if(place_meeting(x+hsp*3, y, o_floor)  && !place_meeting(x, y+1, o_slope_platform))
				{
				image_xscale=image_xscale*-1
				}
			}
	    }
	}

//locked=false
pushed_ver=false
pushed_hor=false

if(vsp<6)
    {
    if(!place_meeting(x, y+1, o_floor)
	&& !place_meeting(x, y+1, o_one_way_floor))
        {
        vsp=vsp+grav
        }
    }



//renew gravity for enemy instance when enemy touches the ground    
if(enemy_action==jija_actions.idle)
	{
	hsp=0
	if(idle_timer>0)
		{
		idle_timer=idle_timer-1
		}
	else
		{
		enemy_action=jija_actions.chase
		}
	}
	
if(enemy_action==jija_actions.chase)
	{
		
	if(!place_meeting(x+(hsp*10), y+1, o_floor))
		{
		image_xscale=image_xscale*-1
		}
		
	if(place_meeting(x+hsp*4, y, o_main_player))
		{
		image_index=0
		enemy_action=jija_actions.attack
		}
	}
	
if(enemy_action==jija_actions.attack)
	{
	hsp=0
	
	
	if(image_index>2 && a_hitbox==noone)
		{
		a_hitbox=instance_create(x, y, o_boss_parent)
		with(a_hitbox)
			{
			image_xscale=other.image_xscale
			sprite_index=s_jija_attack_hitbox
			}
		}
	
	
	
	if(image_index>=image_number-image_speed)	
		{
		if(a_hitbox!=noone)
			{
			instance_destroy(a_hitbox)
			a_hitbox=noone
			}
		
		idle_timer=30
		if(!place_meeting(x-10*image_xscale, y, o_floor))
			{
			x=x-image_xscale*10
			}
		enemy_action=jija_actions.idle
		}
	}	
//horizontal collision

//slopes
scr_init_slopes(enemy_state, enemy_states.grounded)


scr_init_conv_belt()
    
scr_init_horizontal_collisions()              
x=hsp_final+x
x=floor(x)  


col_v=true
scr_init_vertical_collisions()      
    
//scr_init_oneway_collisions()      

//scr_init_oneway_collisions_end()
	
y+=vsp
y=floor(y)
    
     

self_bottom=id.bbox_bottom
self_top=id.bbox_top
self_right=id.bbox_right
self_left=id.bbox_left

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}

if(y>=o_camera.camera_border_bottom+32)
    {
    instance_destroy(id)
    }

hp=scr_boss_get_damage(hp)

if(hp<0)
	{
	scr_boss_death(sprite_index, 1, noone)
	}
	
sprite_index=s_array[enemy_action]