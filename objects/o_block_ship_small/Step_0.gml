/// @description Insert description here
// You can write your code in this editor


x=x+round(hsp)

timer=((timer+2) mod 360)	
//var y_prev=(y)
vsp=((ystart + dsin_array[floor(timer)]*10)-yprevious)
	
y=y+vsp
y=round(y)

if(timer_bomb>0)
	{
	timer_bomb=timer_bomb-1
	}

if(timer_bomb<=0)
	{
	timer_bomb=60
	with(instance_create(x+20, bbox_top, o_rocket_launch))
		{
		sprite_index=s_spider_grenade
		hsp=1
		vsp=-2
		}	
	}
	
if(hsp>0)
	{
	if(hsp==3)
		{
		hsp=2
		}
	else if(hsp==2)
		{
		hsp=3
		}
	if(bbox_left>o_camera.screen_right+64)
		{
		instance_destroy(id)
		}
	}
if(hsp<0)
	{
	if(hsp==-1)
		{
		hsp=-2
		}
	else if(hsp==-2)
		{
		hsp=-1
		}	
		
	if(bbox_right<o_camera.screen_left-64)
		{
		instance_destroy(id)
		}
	}
