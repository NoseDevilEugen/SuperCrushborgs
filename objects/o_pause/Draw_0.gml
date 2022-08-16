/// @description Insert description here
// You can write your code in this editor

/*
if(paused==true)
	{
	draw_surface(pause_surf, screen_left, screen_top)
	}
*/

if(paused==true)
	{
	if(sprite_exists(my_sprite))
		{
		draw_sprite_ext(my_sprite, 0, screen_left, screen_top, 1/(spr_width/480), 1/(spr_height/270), 0, c_white, 1)
		}
	draw_set_alpha(0.5)
	draw_rectangle_color(
	screen_left, 
	screen_top,
	screen_right, 
	screen_bottom,
	c_black,
	c_black,
	c_black,
	c_black,
	0)
	
	draw_set_alpha(1)
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_font(font_menu)
	draw_set_color(c_black)
	draw_set_halign(fa_left)
	draw_set_valign(fa_center)
	}
