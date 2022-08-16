/// @description Insert description here
// You can write your code in this editor
if(timer>20)
	{
    gpu_set_fog(true, c_black, 0, 0)
	draw_self()
    gpu_set_fog(false, c_black, 0, 0)
	if(timer<100)
		{
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1-((timer)/100))
		}
    //blink=false
	}
else
	{
	
    draw_self()
	}