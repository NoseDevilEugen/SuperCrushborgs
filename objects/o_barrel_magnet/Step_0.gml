/// @description Insert description here
// You can write your code in this editor

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
	if(hsp!=0)
		{
		image_xscale=sign(hsp)*image_yscale
		}
			
	if(vsp<(12))
		{
		vsp=vsp+grav
		}
		
	if(!place_meeting(x, y+image_yscale, o_floor))
		{
		grav=(0.25*image_yscale)
		}
	else
		{
		if(sprite_index!=s_faust_shoot)
			{
			if(timer_gravity_change>0)
				{
				timer_gravity_change=timer_gravity_change-1
				}
			else
				{
				vsp=4*image_yscale
				if(sprite_index==s_faust_roll)
					{
					sprite_index=s_faust_roll_ceiling
					}
				else if(sprite_index==s_faust_roll_ceiling)
					{
					sprite_index=s_faust_roll
					}
				//image_speed=image_speed*-1
				image_yscale=image_yscale*-1
				timer_gravity_change=240
				}
			if(timer_shoot>0)
				{
				timer_shoot=timer_shoot-1
				}
			else
				{
				hsp=0
				image_xscale=image_xscale*image_yscale
				sprite_index=s_faust_shoot
				image_index=0
				timer_shoot=100
				}	
			}
		else
			{
			
			if(image_index>=5 && image_index<5.2)
				{
				with(instance_create(x+(10*image_xscale), y-(20*image_yscale), o_joe_spreadgun_bullet))
					{
					hsp=bullet_speed*other.image_xscale
					vsp=0
					}
				with(instance_create(x-(10*image_xscale), y-(20*image_yscale), o_joe_spreadgun_bullet))
					{
					hsp=bullet_speed*-other.image_xscale
					vsp=0
					}
				with(instance_create(x, y-(24*image_yscale), o_joe_spreadgun_bullet))
					{
					hsp=0
					vsp=bullet_speed*-other.image_yscale
					}
				}
			if(image_index>=image_number-0.4)
				{
				hsp=movespeed*image_xscale
				if(image_yscale>0)
					{
					sprite_index=s_faust_roll
					}
				else
					{
					sprite_index=s_faust_roll_ceiling
					}
				}
			}
		}
	if(place_meeting(x+hsp, y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		hsp=hsp*-1
		}
		
		
	x=x+hsp
	x=floor(x)

	//locked=false
	pushed_ver=false
	pushed_hor=false

	if(place_meeting(x, y+floor(vsp), o_floor))
		{
		while(!place_meeting(x, y+sign(vsp), o_floor))
			{
			y=y+sign(vsp)
			}
		vsp=0
		}

	
	y=y+floor(vsp)
	y=floor(y)
	
	
		
	hp=scr_boss_get_damage(hp)
	
	if(hp<0)
		{
		scr_boss_death(sprite_index, 1, my_next_room)
		}
	
	scr_destroy_projectile()
	}