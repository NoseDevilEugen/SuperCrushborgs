/// @description Insert description here
// You can write your code in this editor

//draw_self()
//scr_draw_tiled_sprite()

for(i=0; i<abs(image_xscale); i++)
	{
	if(i==0)
		{
		draw_sprite_ext(spr_l, image_index, 
		x+((i*(sprite_get_width(spr_l))))*sign(image_xscale), 
		y,
		sign(image_xscale),
		sign(image_yscale),
		0,
		c_white,
		1)
		}
	else if (i==abs(image_xscale)-1)
		{
		draw_sprite_ext(spr_r, image_index, 
		x+((i*(sprite_get_width(sprite_index))))*sign(image_xscale), 
		y,
		sign(image_xscale),
		sign(image_yscale),
		0,
		c_white,
		1)
		}
	else
		{
		draw_sprite_ext(spr_m, image_index, 
		x+((i*(sprite_get_width(sprite_index))))*sign(image_xscale), 
		y,
		sign(image_xscale),
		sign(image_yscale),
		0,
		c_white,
		1)
		}
	}