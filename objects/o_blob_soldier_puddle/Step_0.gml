/// @description Insert description here
// You can write your code in this editor

scr_change_focus()

//locked=false
pushed_ver=false
pushed_hor=false

col=false

if(image_xscale!=-sign(x-player.x) && -sign(x-player.x)!=0)
	{
	image_xscale=-sign(x-player.x)
	}

if(sprite_index==s_blob_idle_new)
	{
		
	if(hsp!=0)
		{
		if(collision_rectangle(bbox_left-1, bbox_bottom, bbox_left, bbox_bottom+1, o_floor, false, false)
		&& collision_rectangle(bbox_right+1, bbox_bottom, bbox_right, bbox_bottom+1, o_floor, false, false))
			{
			hsp=0
			}
		}
		
	if(collision_rectangle(bbox_left, bbox_top-30, bbox_right, bbox_bottom, o_main_player, false, false))
		{
		if(timer==-1)
			{
			timer=10
			}
		}
	if(timer>0)
		{
		timer=timer-1
		}
	if(timer==0)
		{
		sprite_index=s_blob_forming_new
		}
	}
	
	
if(vsp<6)
    {
    if(!place_meeting(x, y+1, o_floor)
	&& !place_meeting(x, y+1, o_one_way_floor))
        {
        vsp=vsp+grav
        }
    }
	

scr_init_conv_belt()
    
scr_init_horizontal_collisions()              
x=hsp_final+x
x=floor(x)  


col_v=false
scr_init_vertical_collisions()      
    
//scr_init_oneway_collisions()      

//scr_init_oneway_collisions_end()
	


y+=vsp
y=floor(y)


hp=scr_boss_get_damage(hp)

if(sprite_index==s_blob_forming_new)
	{
	if(image_index>3)
		{
		mask_index=s_blob_forming_new_mask
		}
	else
		{
		mask_index=s_blob_idle_new
		}
	}


if(hp<0)
	{
	scr_boss_death(sprite_index, 1, noone)
	}
	
if((sprite_index==s_blob_forming_new 
&& image_index>=image_number-image_speed)
|| vsp>0)
	{
	with(instance_create(x, y, o_blob_soldier))
		{
		y=y-16
		pushed_ver=false
		vsp=-6
		image_xscale=other.image_xscale
		hp=other.hp
		}
	instance_destroy()
	}


	

	
