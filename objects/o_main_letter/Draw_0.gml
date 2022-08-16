/// @description Insert description here
// You can write your code in this editor

if(room==room_gameover)
	{
	razm_angle=razm_angle+0.5 mod 360	
	if(razm_amp>0)
		{
		razm_amp=razm_amp-1
		}
	scr_draw_sprite_sine(razm_angle, razm_amp)	
	}
else
	{
	draw_self()
	}


//draw_text(x, bbox_top, string(x))