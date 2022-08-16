// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//использовать только для спрайтов, у которых ориджин НЕ в центре!

function scr_draw_tiled_sprite(){
	for(i=0; i<abs(image_xscale); i++)
	    {
	    for(j=0; j<abs(image_yscale); j++)
	        {
	        draw_sprite_ext(sprite_index, image_index, 
			x+((i*(sprite_get_width(sprite_index))))*sign(image_xscale), 
			y+((j*(sprite_get_height(sprite_index))))*sign(image_yscale),
			sign(image_xscale),
			sign(image_yscale),
			0,
			c_white,
			1)
	        }
	    }
}