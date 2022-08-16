//if enemy is onscreen

scr_change_focus()

if(x>o_camera.screen_left-16
&& x<o_camera.screen_right+16
&& y>o_camera.screen_top-16 
&& y<o_camera.screen_bottom+16)
    {
    enemy_onscreen=true
	if(sign(player.x-x)!=0
	&& AI_active==false)
		{
		image_xscale=sign(player.x-x)
		}
	AI_active=true
	if(abs(player.x-x)>100)
		{
		image_xscale=sign(player.x-x)
		}
	
    }
	
if(AI_active==true)
	{
	//speed for enemy's run
	if(enemy_action==rocket_soldier.run)
	    {
	    hsp=movespeed*image_xscale
		if(enemy_state==enemy_states.grounded)
			{
			if(place_meeting(x+hsp*3, y, o_floor)  && !place_meeting(x, y+1, o_slope_platform))
				{
				if(sign(player.x-x)==image_xscale)
					{
					vsp=-6
					}
				else
					{
					image_xscale=image_xscale*-1
					}
				}
			
			if(!place_meeting(x+hsp, y+1, o_floor))
				{
				vsp=-6
				}
			}
	    }
	}
else
	{
	hsp=0
	vsp=0
	}

//locked=false
pushed_ver=false
pushed_hor=false



//renew gravity for enemy instance when enemy touches the ground    
if(enemy_state==enemy_states.grounded)
    {
    //pushed_ver=true
    grav=0.3
    }
if(vsp<6)
    {
    if(enemy_state!=enemy_states.grounded)
        {
        vsp=vsp+grav
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
    
scr_init_oneway_collisions()      

scr_init_oneway_collisions_end()
	
y+=vsp
y=floor(y)

if(place_meeting(x, y+1, o_floor)
|| just_feet!=noone)
    {
    enemy_state=enemy_states.grounded
    }
else
    {
    enemy_state=enemy_states.airborne
    }
    
     

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

if(hp<=0)
	{
	scr_soldier_death(d_sprite, s_sfx_explosion)
	}

