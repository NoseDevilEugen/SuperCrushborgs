/// @description Insert description here
// You can write your code in this editor



scr_boss_blink()

if(charge_index>=0)
	{
	draw_sprite_ext(s_gun_charging, charge_index, x+16, y, 1, 1, 0, c_white, 1)
	charge_index=charge_index+0.5
	if(charge_index>=sprite_get_number(s_gun_charging))
		{
		charge_index=-1
		}
	}

/*
if(object_index==o_floor)
	{
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_green, c_green, c_green, c_green, true)
	}
*/