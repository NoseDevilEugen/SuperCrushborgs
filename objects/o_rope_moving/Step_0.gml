/// @description Insert description here
// You can write your code in this editor



//x=x+hsp

//y=y+vsp

//xdelta = x-xprevious

//ydelta = y-yprevious
counter=(counter+2) mod 360


if(wheel==true)
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
	/*
	if(place_meeting(x+floor(hsp), y, o_floor))
		{
		while(!place_meeting(x+sign(hsp), y, o_floor))
			{
			x=x+sign(hsp)
			}
		hsp=hsp*-1
		}
	*/	
	if(overspeed==false)
		{
		hsp=global.hsp_timer
		}

	vsp=((ystart + dsin_array[floor(counter)]*10)-yprevious)
	//число после counter/ = амплитуда
	//число после * = скорость

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

if(place_meeting(x, y, o_floor))
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
	//hsp=0
    instance_destroy(id)
	
    }

/*
if(y<=0)
	{
	y=room_height
	}
*/