// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_text_outlined(arg_x, arg_y, arg_outline_color, arg_string_color, arg_string){
	
	//draw_text_outlined(x, y, outline color, string color, string)  
 

	//Outline  
	draw_set_color(arg_outline_color);  
	draw_text(arg_x+1, arg_y+1, arg_string);  
	draw_text(arg_x-1, arg_y-1, arg_string);  
	draw_text(arg_x,   arg_y+1, arg_string);  
	draw_text(arg_x+1,   arg_y, arg_string);  
	draw_text(arg_x,   arg_y-1, arg_string);  
	draw_text(arg_x-1,   arg_y, arg_string);  
	draw_text(arg_x-1, arg_y+1, arg_string);  
	draw_text(arg_x+1, arg_y-1, arg_string);  

	//Text  
	draw_set_color(arg_string_color);  
	draw_text(arg_x, arg_y, arg_string);  
	
}