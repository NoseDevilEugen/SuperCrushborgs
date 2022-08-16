// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boss_blink(){

if (hit_timer>0)
	{
	hit_timer=hit_timer-1
    gpu_set_fog(true, c_white, 0, 0)
	draw_self()
    gpu_set_fog(false, c_white, 0, 0)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.2)
    //blink=false
	}
else
	{
	
    draw_self()
	
	}
}
