/// @description Insert description here
// You can write your code in this editor

scr_change_focus()

//locked=false
pushed_ver=false
pushed_hor=false

if(vsp<6)
    {
    if(!place_meeting(x, y+1, o_floor))
        {
        vsp=vsp+grav
        }
	if(place_meeting(x, y, o_one_way_floor))
		{
		if(!place_meeting(x, y+1, o_one_way_floor))
			{
			vsp=vsp+grav
			}
		}
	
    }

if(sprite_index!=s_blob_jump_land_new)
	{
	hsp=4*image_xscale
	
	if(vsp<-3)
		{
		sprite_index=s_blob_jump_up_new
		}
	else if(vsp<0)
		{
		sprite_index=s_blob_jump_diagonal_up_new
		}
	else if(vsp<3)
		{
		sprite_index=s_blob_jump_diagonal_down_new
		}
	else 
		{
		sprite_index=s_blob_jump_diagonal_down_new
		}
	}

if(place_meeting(x+floor(hsp), y, o_floor))
	{
	while(!place_meeting(x+sign(hsp), y, o_floor))
		{
		x=x+sign(hsp)
		}
	hsp=0
	}

	
if(place_meeting(x, y+floor(vsp), o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
			
	if(sprite_index!=s_blob_jump_land_new && vsp>=0)
		{
		if(collision_rectangle(bbox_left-1, bbox_bottom, bbox_left, bbox_bottom+1, o_floor, false, false)
			&& collision_rectangle(bbox_right+1, bbox_bottom, bbox_right, bbox_bottom+1, o_floor, false, false))
				{
				hsp=0
				}
		sprite_index=s_blob_jump_land_new
		image_index=0
		}
	//hsp=0
	vsp=0
			
	if(place_meeting(x, y+1, o_slope_platform))
		{
		vsp=-6
		y=y-16
		if(sign(x-player.x)!=0)
			{
			hsp=4*sign(x-player.x)
			}
		else
			{
			hsp=4
			}

		sprite_index=s_blob_jump_up_new
		pushed_ver=false
		}
	}

/*
if(!place_meeting(x, y, o_one_way_floor))
	{
	if(place_meeting(x, y+vsp, o_one_way_floor) && vsp>0)
		{
		while(!place_meeting(x, y+sign(vsp), o_one_way_floor))
			{
			y=y+sign(vsp)
			}
			
		if(sprite_index!=s_blob_jump_land_new && vsp>0)
			{
			if(collision_rectangle(bbox_left-1, bbox_bottom, bbox_left, bbox_bottom+1, o_floor, false, false)
			&& collision_rectangle(bbox_right+1, bbox_bottom, bbox_right, bbox_bottom+1, o_floor, false, false))
				{
				hsp=0
				}
			sprite_index=s_blob_jump_land_new
			image_index=0
			}
		//hsp=0
		vsp=0
		}
	}

*/

scr_init_conv_belt()
    
scr_init_horizontal_collisions()              
x=hsp_final+x
x=floor(x)  


col_v=true
scr_init_vertical_collisions()      
    
//scr_init_oneway_collisions()      

//scr_init_oneway_collisions_end()


y+=floor(vsp)
y=floor(y)

if(sprite_index==s_blob_jump_land_new)
	{
	if(hsp!=0)
		{
		if(collision_rectangle(bbox_left-1, bbox_bottom, bbox_left, bbox_bottom+1, o_floor, false, false)
		&& collision_rectangle(bbox_right+1, bbox_bottom, bbox_right, bbox_bottom+1, o_floor, false, false))
			{
			hsp=0
			}
		}
	if(image_index>=image_number-image_speed)
		{
		with(instance_create(x, y, o_blob_soldier_puddle))
			{
			timer=-1
			hp=other.hp
			target=noone
			}
		if(instance_exists(target))
			{
			instance_destroy(target)
			}
		instance_destroy()
		}
	}


	
if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}

hp=scr_boss_get_damage(hp)

if(hp<0)
	{
	scr_add_score_to_one()
	scr_boss_death(sprite_index, 1, noone)
	}
