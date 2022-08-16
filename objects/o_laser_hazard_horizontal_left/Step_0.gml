/// @description Insert description here
// You can write your code in this editor

if(instance_position(anchor_x, anchor_y, o_floor))
	{
	anchor_x=anchor_x+instance_position(anchor_x, anchor_y, o_floor).hsp
	anchor_y=anchor_y+instance_position(anchor_x, anchor_y, o_floor).vsp
	x=anchor_x
	y=anchor_y
	}

if(abs(image_xscale)<abs(max_length) && grow==true && max_timer==60)
	{
	image_xscale=image_xscale+(0.5*sign(max_length))
	}
	
if(abs(image_xscale)>0 && grow==false && min_timer==60)
	{
	image_xscale=image_xscale-(0.5*sign(max_length))
	}
	
	
	
if(abs(image_xscale)>=abs(max_length) && grow==true)
	{
	if(max_timer>0)
		{
		max_timer=max_timer-1
		}
	else
		{
		max_timer=60
		grow=false
		}
	}
	
if(abs(image_xscale)==0 && grow==false)
	{
	sprite_index=noone	
	
	if(min_timer>0)
		{
		
		min_timer=min_timer-1
		}
	else
		{
		min_timer=60
		grow=true
		}
	}
else
	{
	sprite_index=s_fire_hazard_hor
	}

	
//hp=scr_boss_get_damage(hp)

/*
if(hp<=0)
	{
	scr_boss_death(sprite_index, 5)
	}

if(instance_exists(target))
	{
	target.x=x
	target.y=y
	}
	
*/