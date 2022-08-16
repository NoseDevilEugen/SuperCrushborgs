/// @description Insert description here
// You can write your code in this editor


scr_boss_blink()

if(timer_bomb<80 && timer_bomb>=60)
	{
	bomb_scale=bomb_scale+0.05
	bomb_scale=clamp(bomb_scale, 0, 1)
	draw_sprite_ext(s_fly_egg, 0, x, y+10, bomb_scale, bomb_scale, image_angle, c_white, 1)
	}

if(timer_bomb<60 && timer_bomb>-1)
	{
	bomb_scale=0
	draw_sprite_ext(s_fly_egg, 0, x, y+10, image_xscale, image_yscale, image_angle, c_white, 1)
	}