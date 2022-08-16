/// @description Insert description here
// You can write your code in this editor
draw_self()

var spr_x, spr_y

if(state==cannon_states.charging)
	{
	spr_x=x
	spr_y=y+20
	draw_sprite_ext(s_gun_charging, charge_index, spr_x, spr_y, image_xscale, image_yscale, 0, c_white, 1)
	}