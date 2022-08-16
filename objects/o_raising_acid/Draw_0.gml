/// @description Insert description here
// You can write your code in this editor

//scr_draw_tiled_sprite()

//draw_text(x, y, string(nearest_gun))
//draw_self()

//draw_sprite_tiled_ext(s_acid, image_index, x-32, y, 1, 1, c_white, 1)
//draw_sprite_tiled_ext(s_acid_second1, image_index, x, y, 1, 1, c_white, 1)
//draw_sprite_tiled_ext(s_acid_deep, image_index, x+32, y, 1, 1, c_white, 1)

draw_self()

//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true)

/*
var i, j
if(bbox_top-32<__view_get( e__VW.YView, view_current)+__view_get( e__VW.HView, view_current))
	{
	for(i=0; i<abs(image_xscale); i++)
		{
		for(j=-1; j<abs(image_yscale); j++)
			{
			//xx=x+((i*(sprite_get_width(sprite_index))))*sign(image_xscale)
			//yy=y+((j*(sprite_get_height(sprite_index))))*sign(image_yscale)
			if(xx[i]<=__view_get( e__VW.XView, view_current)+__view_get( e__VW.WView, view_current)
			&& xx[i]>=__view_get( e__VW.XView, view_current)-192)
				{
				if(vsp!=0)
					{
					if(j==-1)
						{
					
					
						draw_sprite_ext(s_acid, image_index, 
						xx[i], 
						yy[0]-32,
						sign(image_xscale),
						sign(image_yscale),
						0,
						c_white,
						1)
						}
					else if(j==0)
						{
						draw_sprite_ext(s_acid_second1, image_index, 
						xx[i], 
						yy[j],
						sign(image_xscale),
						sign(image_yscale),
						0,
						c_white,
						1)
						}
					else
						{
						draw_sprite_ext(s_acid_deep, 0, 
						xx[i], 
						yy[j],
						sign(image_xscale),
						sign(image_yscale),
						0,
						c_white,
						1)
						}
					}
				else
					{
					if(j==-1)
						{
						draw_sprite_ext(s_acid_calm, image_index, 
						xx[i], 
						yy[0]-32,
						sign(image_xscale),
						sign(image_yscale),
						0,
						c_white,
						1)
						}
					else if(j==0)
						{
						draw_sprite_ext(s_acid_second_calm, image_index, 
						xx[i], 
						yy[j],
						sign(image_xscale),
						sign(image_yscale),
						0,
						c_white,
						1)
						}
					else
						{
						draw_sprite_ext(s_acid_deep, 0, 
						xx[i], 
						yy[j],
						sign(image_xscale),
						sign(image_yscale),
						0,
						c_white,
						1)
						}
					}
				}
			}
		}
	}
*/
