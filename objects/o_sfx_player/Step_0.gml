/// @description Insert description here
// You can write your code in this editor


if(sprite_index!=s_array[0] && place_meeting(x, y, o_magma_upward))
	{
	sprite_index=s_array[0]
	vsp=start_vsp
	hsp=start_hsp
	}

if(sprite_index=s_array[0])
	{
	vsp=vsp+grav
	}

if(place_meeting(x, y+floor(vsp), o_floor))
	{
	while(!place_meeting(x, y+sign(vsp), o_floor))
		{
		y=y+sign(vsp)
		}
	hsp=0
	vsp=0
	while(place_meeting(x, y, o_floor))
		{
		y=y-1
		}
	sprite_index=s_array[1]
	}

	
x=x+floor(hsp)
x=floor(x)
y=y+floor(vsp)
y=floor(y)
