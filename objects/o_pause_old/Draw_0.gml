/// @description Insert description here
// You can write your code in this editor



if(paused==true)
	{
	draw_surface(pause_surf, o_camera.screen_left, o_camera.screen_top)
	}
	
if(overlay==true)
	{
	draw_set_alpha(0.5)
	draw_rectangle_color(o_camera.screen_left, 
	o_camera.screen_top,
	o_camera.screen_right, 
	o_camera.screen_bottom,
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
	scr_draw_text_outlined(o_camera.screen_left+240, o_camera.screen_top+125, c_black, c_white, string("Press Enter or Start to continue"))
	scr_draw_text_outlined(o_camera.screen_left+240, o_camera.screen_top+145, c_black, c_white, string("Press LT+RT or Esc to quit to the main menu"))
	//draw_text(o_camera.screen_left+240, o_camera.screen_top+125, string("Press Enter or Start to continue"))
	//draw_text(o_camera.screen_left+240, o_camera.screen_top+145, string("Press LT+RT or Esc to quit to the main menu"))
	draw_set_halign(fa_left)
	draw_set_valign(fa_center)
	}
	
	
