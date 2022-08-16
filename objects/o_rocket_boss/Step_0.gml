/// @description Insert description here
// You can write your code in this editor



//x=x+hsp

//y=y+vsp

//xdelta = x-xprevious

//ydelta = y-yprevious
counter=(counter+2) mod 360




if(instance_place(x, y-1, o_one_way_floor))
	{
	rocket=false
	hsp=instance_place(x, y-1, o_one_way_floor).hsp
	vsp=0
	}
else if(wheel==true)
	{
	rocket=false
	//var wheel=instance_place(x, y, o_wheel_rope)
	//sprite_index=s_rope_center
	sprite_index=s_rope_spin
	mask_index=s_rope_center
	angle=angle+(wheel_rotation)
	if(angle >= 360) 
		{
		angle -= 360
		}
	hsp=((lengthdir_x(orbit, angle)+wheel_x)-xprevious)
	vsp=((lengthdir_y(orbit, angle)+wheel_y)-yprevious)
	}
else
	{
	rocket=true
	if(place_meeting(x+floor(hsp), y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		hsp=hsp*-1
		}
		
	if(moving==true)
		{
		hsp=global.hsp_timer
		}
	
		
	vsp=((ystart + dsin_array[floor(counter)]*10)-yprevious)
	
	}


//hsp=floor(hsp)

//vsp=floor(vsp)

if(instance_exists(o_controller.player1))
	{
	scr_rope_moving_block(id, o_controller.player1)
	}
if(instance_exists(o_controller.player2))
	{
	scr_rope_moving_block(id, o_controller.player2)
	}



x=x+round(hsp)
y=y+round(vsp)

//x=floor(x)
//y=floor(y)

if(instance_place(x, y, o_destructible))
	{
	instance_place(x, y, o_destructible).hp=0
	}

if(place_meeting(x, y, o_wall_boss))
    {
	for(xsc=0; xsc<floor(image_xscale); xsc++)
		{
		var explode=instance_create(x+8+(32*xsc), y+8, o_special_fx)
		with(explode)
			{
			image_speed=0.2
			sprite_index=s_sfx_explosion
			}
		}
    x=o_camera.screen_left-(bbox_right-bbox_left)
	//y=y+irandom_range(-5, 5)
	counter=irandom_range(0, 359)
	var xsc
	
	if(irandom_range(0,1)==0)
		{
		updown=false
		}
	else
		{
		updown=true
		}
    }
	

	
